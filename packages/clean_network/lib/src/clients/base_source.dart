import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../graphql/graphql_request.dart';
import '../typedefs/typedefs.dart';
import 'clean_client.dart';

/// {@template clean_mixin}
/// A mixin for all sources
/// {@endtemplate}

mixin _CleanMixin {
  /// The [CleanClient] instance used to make requests.
  ///
  late CleanClient _client;

  /// Shuts down the dio client.
  ///
  /// If [force] is `false` (the default) the [Dio] will be kept alive
  /// until all active connections are done. If [force] is `true` any active
  /// connections will be closed to immediately release all resources. These
  /// closed connections will receive an error event to indicate that the client
  /// was shut down. In both cases trying to establish a new connection after
  /// calling [close] will throw an exception.
  @protected
  void close({bool force = false}) => _client.close(force: force);

  /// Convenience method to make an HTTP GET request.
  @protected
  CleanResponse<T> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.get(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP GET request with [Uri].
  @protected
  CleanResponse<T> getUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.getUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP POST request.
  @protected
  CleanResponse<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP POST request with [Uri].
  @protected
  CleanResponse<T> postUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.postUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP PUT request.
  @protected
  CleanResponse<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP PUT request with [Uri].
  @protected
  CleanResponse<T> putUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.putUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP PATCH request.
  @protected
  CleanResponse<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP PATCH request with [Uri].
  @protected
  CleanResponse<T> patchUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.patchUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP DELETE request.
  @protected
  CleanResponse<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSuccess: onSuccess,
      );

  /// Convenience method to make an HTTP DELETE request with [Uri].
  @protected
  CleanResponse<T> deleteUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    required OnSuccessCallback<T> onSuccess,
  }) =>
      _client.deleteUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSuccess: onSuccess,
      );

  /// Download the file and save it in local. The default http method is "GET",
  @protected
  Future<Response> download(
    String urlPath,
    dynamic savePath, {
    ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    Object? data,
    Options? options,
  }) =>
      _client.download(
        urlPath,
        savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        deleteOnError: deleteOnError,
        lengthHeader: lengthHeader,
        data: data,
        options: options,
      );

  /// The eventual method to submit requests. All callers for requests should
  /// eventually go through this method.
  @protected
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) =>
      _client.fetch<T>(requestOptions);

  /// Sends an HTTP request with the specified method to the given url.
  /// Returns a [Future] that completes with the server's response.
  @protected
  CleanResponse<T> graph<T>({
    required GraphRequest request,
    required T Function(Map<String, dynamic> data) onSuccess,
  }) =>
      _client.graph(
        request: request,
        onSuccess: onSuccess,
      );

  /// used to reset the http client adapter
  @protected
  void resetHttpClientAdapter({bool force = false}) =>
      _client.resetHttpClientAdapter(force: force);

  /// Creates a new [CleanClient] instance.
  @protected
  CleanClient clone() => _client.clone();
}

/// {@template base_source}
/// Base source for all sources
/// {@endtemplate}
abstract class BaseSource with _CleanMixin {
  ///{@macro base_source}
  BaseSource(CleanClient client) {
    _client = client;
  }
}
