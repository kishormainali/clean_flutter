part of 'clients.dart';

/// {@template clean_client}
/// A client for making HTTP requests.
/// {@endtemplate}
abstract class CleanClient {
  ///{@macro clean_client}
  /// Creates a new [CleanClient] instance.
  factory CleanClient({
    /// clean network options
    required BaseOptions options,

    /// logger options
    DioLoggerOptions loggerOptions = const DioLoggerOptions(),

    /// interceptors for dio
    Interceptors? interceptors,

    /// cache options
    CacheOptions? cacheOptions,

    /// http adapter
    HttpClientAdapter? httpClientAdapter,
  }) =>
      CleanClientImpl(
        options: options,
        loggerOptions: loggerOptions,
        interceptors: interceptors,
        cacheOptions: cacheOptions,
        httpClientAdapter: httpClientAdapter,
      );

  /// Shuts down the dio client.
  ///
  /// If [force] is `false` (the default) the [Dio] will be kept alive
  /// until all active connections are done. If [force] is `true` any active
  /// connections will be closed to immediately release all resources. These
  /// closed connections will receive an error event to indicate that the client
  /// was shut down. In both cases trying to establish a new connection after
  /// calling [close] will throw an exception.
  void close({bool force = false});

  /// Convenience method to make an HTTP GET request.
  Future<T> get<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP GET request with [Uri].
  Future<T> getUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP POST request.
  Future<T> post<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP POST request with [Uri].
  Future<T> postUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP PUT request.
  Future<T> put<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP PUT request with [Uri].
  Future<T> putUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP PATCH request.
  Future<T> patch<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP PATCH request with [Uri].
  Future<T> patchUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });

  /// Convenience method to make an HTTP DELETE request.
  Future<T> delete<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  });

  /// Convenience method to make an HTTP DELETE request with [Uri].
  Future<T> deleteUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
  });

  /// Download the file and save it in local. The default http method is "GET",
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
  });

  /// The eventual method to submit requests. All callers for requests should
  /// eventually go through this method.
  Future<Response<T>> fetch<T>(RequestOptions requestOptions);

  /// used to reset the http client adapter
  void resetHttpClientAdapter(
    HttpClientAdapter adapter, {
    bool force = false,
  });

  /// Creates a new [CleanClient] instance.
  CleanClient clone();
}
