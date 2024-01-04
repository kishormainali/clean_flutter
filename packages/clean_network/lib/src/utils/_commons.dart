import 'package:clean_network/clean_network.dart';
import 'package:gql_exec/gql_exec.dart' hide Response;

import '../exceptions/_dio_extension.dart';
import '../graphql/graphql_request.dart';
import '_utils.dart';

ApiException handleCommonError<T>(Object exception, StackTrace stacktrace) {
  if (exception is FormatException ||
      exception.toString().contains('is not a subtype of')) {
    return ParseException(
      message: exception.toString(),
      stackTrace: stacktrace,
    );
  }
  return ServerException(
    message: exception.toString(),
    stackTrace: stacktrace,
  );
}

/// method for handling exceptions
CleanResponse<dynamic> tryCatch(Future<Response<dynamic>> Function() function) {
  try {
    return Task(() async {
      final response = await function();
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data;
      }
      throw ServerException(
        message: response.statusMessage ?? DioExtensionMessages.unexpectedError,
        code: response.statusCode,
        stackTrace: StackTrace.current,
      );
    });
  } on DioException catch (exception) {
    throw exception.toApiException;
  } catch (exception, stacktrace) {
    if (exception is ApiException) rethrow;
    throw handleCommonError(exception, stacktrace);
  }
}

/// Returns an instance of [Options] with the specified request options for a GraphQL request.
///
/// The [Options] instance includes the response type, headers, extra options, send timeout, and receive timeout.
/// The headers include the accept and content type headers, as well as any base options headers, request headers, and HTTP link headers.
Options _requestOptions(GraphRequest request) {
  return Options(
    responseType: ResponseType.json,
    headers: {
      Headers.acceptHeader: Headers.jsonContentType,
      Headers.contentTypeHeader: Headers.jsonContentType,
      ...request.headers,
    },
    extra: request.extra,
    sendTimeout: request.sendTimeOut,
    receiveTimeout: request.receiveTimeOut,
  );
}

/// Handles a GraphQL request and returns a [CleanResult] object containing a map of dynamic values.
///
/// The function takes a [GraphRequest] object as input and returns a [Future] of [CleanResult] object.
/// The [GraphRequest] object contains the GraphQL operation, operation name, variables, and context.
/// The function prepares the request body and sends the request to the server using either GET or POST method.
/// If the response data is not a map of dynamic values, it throws a [FormatException].
/// If the response contains errors, it throws a [DioException].
/// If the response is successful, it returns a [CleanResult] object containing the parsed response data.
CleanResponse<Map<String, dynamic>> handleGraphQlRequest({
  required Dio client,
  required GraphRequest request,
  required RequestSerializer requestSerializer,
  required ResponseParser responseParser,
  String endpoint = '/graphql',
}) {
  try {
    return Task(() async {
      final graphqlRequest = Request(
        operation: Operation(
          document: request.operation,
          operationName: request.operationName,
        ),
        variables: request.variables,
        context: const Context(),
      );

      final body = prepareRequestBody(
        graphqlRequest,
        requestSerializer.serializeRequest,
      );
      Response<dynamic> res;

      final options = _requestOptions(request);

      final useGet = request.useGetForQueries &&
          body is Map<String, dynamic> &&
          graphqlRequest.isQuery;
      if (useGet) {
        res = await client.getUri<dynamic>(
          Uri.parse(endpoint).replace(
            queryParameters: attemptEncode(
              graphqlRequest,
              encodeAsUriParams,
            )(body),
          ),
          options: options,
          cancelToken: request.cancelToken,
        );
      } else {
        res = await client.post<dynamic>(
          endpoint,
          data: body,
          options: options,
          cancelToken: request.cancelToken,
        );
      }

      if (res.statusCode! > 300 ||
          res.data['data'] == null ||
          res.data['errors'] == null) {
        throw ServerException(
          message: res.statusMessage ?? DioExtensionMessages.unexpectedError,
          code: res.statusCode,
          stackTrace: StackTrace.current,
        );
      }

      if (res.data is! Map<String, dynamic>) {
        throw const FormatException(
            'Response data is not a map of dynamic values.');
      }

      final parsedResponse = responseParser.parseResponse(res.data);

      if (parsedResponse.errors != null) throw convertToDioError(res);

      return parsedResponse.response;
    });
  } on DioException catch (exception) {
    throw exception.toApiException;
  } catch (exception, stacktrace) {
    if (exception is ApiException) rethrow;
    throw handleCommonError(exception, stacktrace);
  }
}
