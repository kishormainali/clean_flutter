import 'dart:convert';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart'
    as clean_core;
import 'package:clean_graphql/src/_utils.dart';
import 'package:clean_graphql/src/client_options.dart';
import 'package:clean_graphql/src/context_entries.dart';
import 'package:dio/dio.dart' as dio;
import 'package:ferry/ferry.dart';
import 'package:fp_logger/fp_logger.dart';
import 'package:gql_exec/gql_exec.dart';

/// copied from https://github.com/gql-dart/gql/blob/master/links/gql_dio_link/lib/src/dio_link.dart
/// and modified to fit the needs of this package
extension _CastDioResponse on dio.Response {
  dio.Response<T> castData<T>() => dio.Response<T>(
        data: data as T?,
        headers: headers,
        requestOptions: requestOptions,
        isRedirect: isRedirect,
        statusCode: statusCode,
        statusMessage: statusMessage,
        redirects: redirects,
        extra: extra,
      );
}

/// A [Link] that sends GraphQL operations to a specified endpoint via HTTP.
class DioLink extends Link {
  DioLink({
    required this.options,
    dio.Interceptors? interceptors,
    dio.HttpClientAdapter? httpClientAdapter,
  }) {
    _client = dio.Dio()
      ..interceptors.addAll([...?interceptors, DioLogger(_loggerOptions)])
      ..httpClientAdapter =
          httpClientAdapter ?? clean_core.DefaultHttpAdapter();
  }

  /// client for making requests
  late dio.Dio _client;

  /// The options for the client
  final ClientOptions options;

  /// The logger options
  DioLoggerOptions get _loggerOptions => options.loggerOptions;

  /// The base url for the client
  String get _baseUrl => options.baseUrl;

  /// The default headers for the client
  Map<String, dynamic> get _defaultHeaders => options.defaultHeaders;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    final dioResponse = await _executeDioRequest(
      request: request,
      headers: <String, String>{
        dio.Headers.acceptHeader: '*/*',
        dio.Headers.contentTypeHeader: dio.Headers.jsonContentType,
        ..._defaultHeaders,
        ..._getHttpLinkHeaders(request),
      },
      isQuery: request.isQuery,
    );

    if (dioResponse.statusCode! >= 300 ||
        (dioResponse.data!['data'] == null &&
            dioResponse.data!['errors'] == null)) {
      throw clean_core.ServerException(
        message: clean_core.DioExtensionMessages.unexpectedError,
        stackTrace: StackTrace.current,
        code: dioResponse.statusCode,
      );
    }

    final gqlResponse = _parseDioResponse(dioResponse);
    yield Response(
      data: gqlResponse.data,
      errors: gqlResponse.errors,
      response: gqlResponse.response,
      context: _updateResponseContext(gqlResponse, dioResponse),
    );
  }

  dynamic _prepareRequestBody(Request request) {
    final body = _encodeAttempter(
      request,
      options.requestSerializer.serializeRequest,
    )(request);

    final fileMap = extractFlattenedFileMap(body);

    if (fileMap.isEmpty) return body;

    final encodedBody = _encodeAttempter(
      request,
      (Map body) => json.encode(
        body,
        toEncodable: (dynamic object) =>
            (object is dio.MultipartFile) ? null : object.toJson(),
      ),
    )(body);

    final formBody = dio.FormData.fromMap(
      <String, dynamic>{
        'operations': encodedBody,
      }..addAll(generateFileFormBody(fileMap)),
    );

    return formBody;
  }

  Map<String, String> _encodeAsUriParams(Map<String, dynamic> serialized) =>
      serialized.map<String, String>(
        (k, dynamic v) => MapEntry(k, v is String ? v : json.encode(v)),
      );

  /// wrap an encoding transform in exception handling
  T Function(V) _encodeAttempter<T, V>(
    Request request,
    T Function(V) encoder,
  ) =>
      (V input) {
        try {
          return encoder(input);
        } catch (e, stackTrace) {
          throw RequestFormatException(
            originalException: e,
            originalStackTrace: stackTrace,
            request: request,
          );
        }
      };

  Context _updateResponseContext(
    Response response,
    dio.Response httpResponse,
  ) {
    try {
      return response.context.withEntry(
        HttpLinkResponseContext(
          statusCode: httpResponse.statusCode!,
          rawHeaders: httpResponse.headers.map,
        ),
      );
    } catch (e, stackTrace) {
      throw ContextWriteException(
        originalException: e,
        originalStackTrace: stackTrace,
      );
    }
  }

  Future<dio.Response<Map<String, dynamic>>> _executeDioRequest({
    required Request request,
    required Map<String, String> headers,
    required bool isQuery,
  }) async {
    try {
      final dynamic body = _prepareRequestBody(request);
      dio.Response<dynamic> res;
      final cancelToken =
          request.context.entry<CancelTokenContextEntry>()?.cancelToken;
      final extra = request.context.entry<ExtraContextEntry>()?.extra;
      final noAuthEntry = request.context.entry<NoAuthContextEntry>()?.key;
      if (noAuthEntry != null) {
        headers.remove(noAuthEntry);
      }
      final useGet =
          options.useGETForQueries && body is Map<String, dynamic> && isQuery;
      if (useGet) {
        res = await _client.getUri<dynamic>(
          Uri.parse(_baseUrl).replace(
            queryParameters: _encodeAttempter(
              request,
              _encodeAsUriParams,
            )(body),
          ),
          cancelToken: cancelToken,
          options: dio.Options(
            responseType: dio.ResponseType.json,
            headers: headers,
            extra: extra,
          ),
        );
      } else {
        res = await _client.post<dynamic>(
          _baseUrl,
          cancelToken: cancelToken,
          data: body,
          options: dio.Options(
            responseType: dio.ResponseType.json,
            headers: headers,
            extra: extra,
          ),
        );
      }
      if (res.data is Map<String, dynamic> == false) {
        throw clean_core.ParseException(
          message: clean_core.DioExtensionMessages.parseError,
          stackTrace: StackTrace.current,
        );
      }
      return res.castData<Map<String, dynamic>>();
    } on dio.DioException catch (e) {
      final dio.DioException resolvedError;
      if (options.serializableErrors) {
        resolvedError = _serializableDioException(e);
      } else {
        resolvedError = e;
      }
      throw resolvedError.toApiException;
    } catch (e, stackTrace) {
      if (e is LinkException) {
        throw clean_core.ServerException(
          message: e.toString(),
          stackTrace: stackTrace,
        );
      }
      if (e is clean_core.ApiException) rethrow;
      throw clean_core.ServerException(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  dio.DioException _serializableDioException(dio.DioException e) =>
      dio.DioException(
        type: e.type,
        error: e.error,
        response: e.response,
        requestOptions: dio.RequestOptions(
          data: e.requestOptions.data is Map<String, dynamic> ||
                  e.requestOptions is String
              ? e.requestOptions.data
              : null, // could be FormData, which is not serializable
          path: e.requestOptions.path,
          method: e.requestOptions.method,
          baseUrl: e.requestOptions.baseUrl,
          headers: e.requestOptions.headers,
          queryParameters: e.requestOptions.queryParameters,
          extra: e.requestOptions.extra,
          maxRedirects: e.requestOptions.maxRedirects,
          followRedirects: e.requestOptions.followRedirects,
          connectTimeout: e.requestOptions.connectTimeout,
          contentType: e.requestOptions.contentType,
          receiveTimeout: e.requestOptions.receiveTimeout,
          receiveDataWhenStatusError:
              e.requestOptions.receiveDataWhenStatusError,
          sendTimeout: e.requestOptions.sendTimeout,
          responseType: e.requestOptions.responseType,
          listFormat: e.requestOptions.listFormat,
          persistentConnection: e.requestOptions.persistentConnection,
        ),
      );

  Response _parseDioResponse(dio.Response<Map<String, dynamic>> dioResponse) {
    try {
      return options.responseParser.parseResponse(dioResponse.data!);
    } catch (e, stackTrace) {
      throw clean_core.ParseException(
        message: clean_core.DioExtensionMessages.parseError,
        stackTrace: stackTrace,
      );
    }
  }

  Map<String, String> _getHttpLinkHeaders(Request request) {
    try {
      final linkHeaders = request.context.entry<HttpLinkHeaders>();
      return {
        if (linkHeaders != null) ...linkHeaders.headers,
      };
    } catch (e, stackTrace) {
      throw ContextReadException(
        originalException: e,
        originalStackTrace: stackTrace,
      );
    }
  }

  /// Closes the underlining Dio client
  void close({bool force = false}) {
    _client.close(force: force);
  }

  /// Resets the underlining [dio.Dio] client's [dio.HttpClientAdapter]
  void resetHttpClientAdapter({
    dio.HttpClientAdapter? adapter,
    bool force = false,
  }) {
    _client.httpClientAdapter.close(force: force);
    _client.httpClientAdapter = adapter ?? clean_core.DefaultHttpAdapter();
  }
}
