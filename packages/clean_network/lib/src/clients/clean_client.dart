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
    LoggerOptions loggerOptions = const LoggerOptions(),

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
  CleanResponse<T> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP GET request with [Uri].
  CleanResponse<T> getUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP POST request.
  CleanResponse<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP POST request with [Uri].
  CleanResponse<T> postUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP PUT request.
  CleanResponse<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP PUT request with [Uri].
  CleanResponse<T> putUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP PATCH request.
  CleanResponse<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP PATCH request with [Uri].
  CleanResponse<T> patchUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP DELETE request.
  CleanResponse<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required OnSuccessCallback<T> onSuccess,
  });

  /// Convenience method to make an HTTP DELETE request with [Uri].
  CleanResponse<T> deleteUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    required OnSuccessCallback<T> onSuccess,
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
