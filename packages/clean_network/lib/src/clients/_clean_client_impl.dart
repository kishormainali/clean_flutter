import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_network/src/clients/clients.dart';
import 'package:clean_network/src/utils/_commons.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:fp_logger/fp_logger.dart';

class CleanClientImpl implements CleanClient {
  factory CleanClientImpl({
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
  }) {
    httpClientAdapter ??= DefaultHttpAdapter();

    /// create dio instance
    final dio = Dio(options)..httpClientAdapter = httpClientAdapter;

    /// set interceptors
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }

    /// set cache options
    if (cacheOptions != null) {
      dio.interceptors.add(DioCacheInterceptor(options: cacheOptions));
    }

    /// always add logger interceptor at the end
    dio.interceptors.add(DioLogger(loggerOptions));
    return CleanClientImpl._(
      dio,
      options,
    );
  }
  CleanClientImpl._(this._dio, this.options);

  /// The [Dio] instance used to make requests.
  late Dio _dio;

  /// The [BaseOptions] options used initialize the [Dio] instance.
  final BaseOptions options;

  @override
  Future<T> delete<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return tryCatch(
      () => _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> deleteUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return tryCatch(
      () => _dio.deleteUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
      ),
      onSuccess,
    );
  }

  @override
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
  }) {
    return _dio.download(
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
  }

  @override
  Future<Response<T>> fetch<T>(
    RequestOptions requestOptions,
  ) =>
      _dio.fetch<T>(requestOptions);

  @override
  Future<T> get<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> getUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.getUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> patch<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> patchUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.patchUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> post<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> postUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.postUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> put<T>(
    String path, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  Future<T> putUri<T>(
    Uri uri, {
    required OnSuccessCallback<T> onSuccess,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return tryCatch(
      () => _dio.putUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      onSuccess,
    );
  }

  @override
  void resetHttpClientAdapter(
    HttpClientAdapter adapter, {
    bool force = false,
  }) {
    _dio.httpClientAdapter.close(force: force);
    _dio.httpClientAdapter = adapter;
  }

  @override
  void close({bool force = false}) => _dio.close(force: force);

  @override
  CleanClient clone() {
    return CleanClientImpl._(
      Dio(_dio.options),
      options,
    );
  }
}
