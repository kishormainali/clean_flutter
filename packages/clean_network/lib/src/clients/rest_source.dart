part of 'clients.dart';

/// {@template clean_mixin}
/// A mixin for all sources
/// {@endtemplate}

mixin _CleanMixin {
  /// The [CleanClient] instance used to make requests.
  ///
  late CleanClient _client;

  /// Convenience method to make an HTTP GET request.
  @protected
  Future<T> get<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
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
  Future<T> getUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
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
  Future<T> post<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
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
  Future<T> postUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
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
  Future<T> put<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
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
  Future<T> putUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
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
  Future<T> patch<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
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
  Future<T> patchUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
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
  Future<T> delete<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
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
  Future<T> deleteUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
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
  Future<Response<T>> fetch<T>(
    RequestOptions requestOptions,
  ) =>
      _client.fetch<T>(requestOptions);

  /// used to reset the http client adapter
  @protected
  void resetHttpClientAdapter(
    HttpClientAdapter adapter, {
    bool force = false,
  }) =>
      _client.resetHttpClientAdapter(
        adapter,
        force: force,
      );

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

  /// Creates a new [CleanClient] instance.
  @protected
  CleanClient clone() => _client.clone();
}

/// {@template base_source}
/// Base source for all sources
/// {@endtemplate}
abstract class RestSource with _CleanMixin {
  ///{@macro base_source}
  RestSource(CleanClient client) {
    _client = client;
  }
}
