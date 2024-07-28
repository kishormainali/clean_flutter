import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fp_logger/src/dio_logger_options.dart';
import 'package:fp_logger/src/logger.dart';

/// {@template dio_logger}
/// A [Interceptor] which logs the request and response.
/// {@endtemplate}
class DioLogger extends Interceptor {
  /// {@macro dio_logger}
  const DioLogger([this.dioOptions = const DioLoggerOptions()]);

  /// The options for the logger.
  final DioLoggerOptions dioOptions;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (dioOptions.request) {
      _printRequest(options);
    }
    if (dioOptions.requestHeader) {
      _printRequestHeader(options);
    }
    if (dioOptions.requestBody &&
        options.method != 'GET' &&
        options.data != null) {
      final data = options.data;
      if (data is FormData) {
        final formMaps = {}
          ..addEntries(data.fields)
          ..addEntries(data.files);
        Logger.i(formMaps);
      } else {
        Logger.i(data);
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (dioOptions.responseHeader) _printResponseHeader(response);
    if (dioOptions.responseBody) _printResponse(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (dioOptions.error) {
      final messages = [
        'URI:: ${err.requestOptions.uri}',
        'Type:: ${err.type}',
        'Message:: ${err.message}',
        if (err.response != null) ...[
          'Status:: ${err.response?.statusCode}',
          'Status Message:: ${err.response?.statusMessage}',
        ],
      ];
      Logger.e(messages, error: err.error, stackTrace: err.stackTrace);
    }
    super.onError(err, handler);
  }

  void _printRequest(RequestOptions options) {
    final message = 'Method:: ${options.method} URI:: ${options.uri}';
    Logger.i(message);
  }

  void _printRequestHeader(RequestOptions options) {
    options.headers.remove(HttpHeaders.authorizationHeader);
    final requestHeaders = <String, dynamic>{...options.headers};
    requestHeaders['contentType'] = options.contentType.toString();
    requestHeaders['responseType'] = options.responseType.toString();
    requestHeaders['queryParameters'] = options.queryParameters;
    requestHeaders['extra'] = options.extra;
    Logger.i(requestHeaders);
  }

  void _printResponseHeader(Response response) {
    final message =
        'Method:: ${response.requestOptions.method} URI:: ${response.requestOptions.uri} Status:: ${response.statusCode}';
    Logger.i(message);
  }

  void _printResponse(Response response) {
    final responseBody = response.data;
    if (responseBody is Map || responseBody is List) {
      Logger.i(responseBody);
    } else if (responseBody is Uint8List) {
      final chunks = [];
      for (var i = 0; i < responseBody.length; i += 20) {
        chunks.add(
          responseBody.sublist(
            i,
            i + 20 > responseBody.length ? responseBody.length : i + 20,
          ),
        );
      }
      Logger.i(chunks);
    } else {
      Logger.i(responseBody.toString());
    }
  }
}
