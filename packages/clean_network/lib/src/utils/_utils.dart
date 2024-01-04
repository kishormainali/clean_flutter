import "dart:convert";
import 'dart:developer' as dev;

import "package:dio/dio.dart" as dio;
import "package:gql/ast.dart";
import "package:gql_exec/gql_exec.dart" as gql;
import "package:gql_exec/gql_exec.dart";

/// Recursively extract [dio.MultipartFile]s and return them as a normalized map of [path] => [file]
/// From the given request body
///
/// ```dart
/// {
///   "foo": [ { "bar": MultipartFile("blah.txt") } ]
///  }
/// // =>
/// {
///   "foo.0.bar": MultipartFile("blah.txt")
/// }
/// ```
Map<String, dio.MultipartFile> extractFlattenedFileMap(
  dynamic body, {
  Map<String, dio.MultipartFile>? currentMap,
  List<String> currentPath = const <String>[],
}) {
  currentMap ??= <String, dio.MultipartFile>{};
  if (body is Map<String, dynamic>) {
    final Iterable<MapEntry<String, dynamic>> entries = body.entries;
    for (final MapEntry<String, dynamic> element in entries) {
      currentMap.addAll(extractFlattenedFileMap(
        element.value,
        currentMap: currentMap,
        currentPath: List<String>.from(currentPath)..add(element.key),
      ));
    }
    return currentMap;
  }
  if (body is List<dynamic>) {
    for (int i = 0; i < body.length; i++) {
      currentMap.addAll(extractFlattenedFileMap(
        body[i],
        currentMap: currentMap,
        currentPath: List<String>.from(currentPath)..add(i.toString()),
      ));
    }
    return currentMap;
  }

  if (body is dio.MultipartFile) {
    return currentMap
      ..addAll({
        currentPath.join("."): body,
      });
  }

  return currentMap;
}

/// generate file form body
Map<String, dynamic> generateFileFormBody(
    Map<String, dio.MultipartFile> fileMap) {
  final Map<String, List<String>> fileMapping = <String, List<String>>{};
  final List<dio.MultipartFile> fileList = <dio.MultipartFile>[];

  final List<MapEntry<String, dio.MultipartFile>> fileMapEntries =
      fileMap.entries.toList(growable: false);

  final Map<String, dynamic> fileFormBody = <String, dynamic>{};

  for (int i = 0; i < fileMapEntries.length; i++) {
    final MapEntry<String, dio.MultipartFile> entry = fileMapEntries[i];
    final String indexString = i.toString();
    fileMapping.addAll(<String, List<String>>{
      indexString: <String>[entry.key],
    });
    final dio.MultipartFile f = entry.value;
    fileList.add(f);
  }

  fileFormBody["map"] = json.encode(fileMapping);
  for (var i = 0; i < fileList.length; i++) {
    fileFormBody[i.toString()] = fileList[i];
  }

  return fileFormBody;
}

/// encode body
/// wrap an encoding transform in exception handling
T Function(V) attemptEncode<T, V>(
  Request request,
  T Function(V) encoder,
) =>
    (V input) {
      try {
        return encoder(input);
      } catch (e, stacktrace) {
        dev.log(e.toString(), stackTrace: stacktrace);
        throw Exception(e.toString());
      }
    };

/// prepare request body

dynamic prepareRequestBody(
  Request request,
  Map<String, dynamic> Function(Request) serializeRequest,
) {
  final body = attemptEncode(
    request,
    serializeRequest,
  )(request);

  final fileMap = extractFlattenedFileMap(body);

  if (fileMap.isEmpty) return body;

  final encodedBody = attemptEncode(
    request,
    (Map body) => json.encode(
      body,
      toEncodable: (dynamic object) =>
          (object is dio.MultipartFile) ? null : object.toJson(),
    ),
  )(body);

  final formBody = dio.FormData.fromMap(
    <String, dynamic>{
      "operations": encodedBody,
    }..addAll(generateFileFormBody(fileMap)),
  );

  return formBody;
}

/// get http link headers from context

Map<String, String> getHttpLinkHeaders(Request request) {
  try {
    final HttpLinkHeaders? linkHeaders = request.context.entry();
    return {
      if (linkHeaders != null) ...linkHeaders.headers,
    };
  } catch (e, stackTrace) {
    dev.log(e.toString(), stackTrace: stackTrace);
    throw Exception(e.toString());
  }
}

/// convert to error
dio.DioException serializableDioError(dio.DioException e) => dio.DioException(
      type: e.type,
      error: e.error,
      response: e.response,
      requestOptions: dio.RequestOptions(
        data: (e.requestOptions.data is Map<String, dynamic> ||
                e.requestOptions is String)
            ? e.requestOptions.data
            : null,
        // could be FormData, which is not serializable
        onSendProgress: null,
        onReceiveProgress: null,
        cancelToken: null,
        responseDecoder: null,
        requestEncoder: null,
        validateStatus: null,
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
        receiveDataWhenStatusError: e.requestOptions.receiveDataWhenStatusError,
        sendTimeout: e.requestOptions.sendTimeout,
      ),
    );

/// convert to error
dio.DioException convertToDioError(dio.Response response) =>
    dio.DioException.badResponse(
      statusCode: response.statusCode ?? 400,
      response: response,
      requestOptions: dio.RequestOptions(
        data: (response.requestOptions.data is Map<String, dynamic> ||
                response.requestOptions is String)
            ? response.requestOptions.data
            : null,
        // could be FormData, which is not serializable
        onSendProgress: null,
        onReceiveProgress: null,
        cancelToken: null,
        responseDecoder: null,
        requestEncoder: null,
        validateStatus: null,
        path: response.requestOptions.path,
        method: response.requestOptions.method,
        baseUrl: response.requestOptions.baseUrl,
        headers: response.requestOptions.headers,
        queryParameters: response.requestOptions.queryParameters,
        extra: response.requestOptions.extra,
        maxRedirects: response.requestOptions.maxRedirects,
        followRedirects: response.requestOptions.followRedirects,
        connectTimeout: response.requestOptions.connectTimeout,
        contentType: response.requestOptions.contentType,
        receiveTimeout: response.requestOptions.receiveTimeout,
        receiveDataWhenStatusError:
            response.requestOptions.receiveDataWhenStatusError,
        sendTimeout: response.requestOptions.sendTimeout,
      ),
    );

/// encode URI params
Map<String, String> encodeAsUriParams(Map<String, dynamic> serialized) =>
    serialized.map<String, String>(
      (k, dynamic v) => MapEntry(k, v is String ? v : json.encode(v)),
    );

/// extension to get type from [gql.Request]
extension WithType on gql.Request {
  OperationType get type {
    final definitions = operation.document.definitions
        .whereType<OperationDefinitionNode>()
        .toList();
    if (operation.operationName != null) {
      definitions.removeWhere(
        (node) => node.name!.value != operation.operationName,
      );
    }
    // TODO differentiate error types, add exception
    assert(definitions.length == 1);
    return definitions.first.type;
  }

  bool get isQuery => type == OperationType.query;
}
