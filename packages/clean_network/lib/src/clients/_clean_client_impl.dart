import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../graphql/graphql_request.dart';
import '../network/default_http_adapter.dart';
import '../options/clean_base_options.dart';
import '../options/logger_options.dart';
import '../typedefs/typedefs.dart';
import '../utils/_commons.dart';
import 'clean_client.dart';

class CleanClientImpl implements CleanClient {
  CleanClientImpl._(
    this._dio,
    this.options,
  );

  factory CleanClientImpl({
    /// clean network options
    required CleanBaseOptions options,

    /// logger options
    LoggerOptions loggerOptions = const LoggerOptions(),

    /// interceptors for dio
    Interceptors? interceptors,

    /// cache options
    CacheOptions? cacheOptions,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: options.baseUrl,
        connectTimeout: options.connectTimeOut,
        receiveTimeout: options.readTimeOut,
        sendTimeout: options.sendTimeOut,
        contentType: 'application/json',
        responseType: ResponseType.json,
        headers: options.headers,
      ),
    );
    dio.httpClientAdapter = DefaultHttpAdapter(
      validateCertificate: options.validateCertificate,
      context: options.securityContext,
      proxy: options.proxyCallback,
      onBadCertificate: options.onBadCertificate,
    );
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }
    if (cacheOptions != null) {
      dio.interceptors.add(DioCacheInterceptor(options: cacheOptions));
    }

    /// always add logger interceptor at the end
    dio.interceptors.add(PrettyDioLogger(
      request: loggerOptions.request,
      requestHeader: loggerOptions.requestHeader,
      requestBody: loggerOptions.requestBody,
      responseBody: loggerOptions.responseBody,
      responseHeader: loggerOptions.requestHeader,
      error: loggerOptions.error,
      compact: loggerOptions.compact,
      maxWidth: loggerOptions.maxWidth,
    ));
    return CleanClientImpl._(dio, options);
  }

  /// The [Dio] instance used to make requests.
  late Dio _dio;

  /// The [CleanBaseOptions] options used initialize the [Dio] instance.
  final CleanBaseOptions options;

  @override
  void close({bool force = false}) => _dio.close(force: force);

  @override
  CleanResponse<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required OnSuccessCallback<T> onSuccess,
  }) {
    return tryCatch(
      () => _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      ),
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> deleteUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    required OnSuccessCallback<T> onSuccess,
  }) {
    return tryCatch(
      () => _dio.deleteUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
      ),
    ).map(onSuccess);
  }

  @override
  Future<Response> download(
    String urlPath,
    savePath, {
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
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) =>
      _dio.fetch<T>(requestOptions);

  @override
  CleanResponse<T> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> getUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
  }) {
    return tryCatch(
      () => _dio.getUri(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      ),
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> graph<T>({
    required GraphRequest request,
    required T Function(Map<String, dynamic> data) onSuccess,
  }) {
    return handleGraphQlRequest(
      client: _dio,
      request: request,
      requestSerializer: options.requestSerializer,
      responseParser: options.responseParser,
      endpoint: options.endpoint,
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> patchUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> postUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  CleanResponse<T> putUri<T>(
    Uri uri, {
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required OnSuccessCallback<T> onSuccess,
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
    ).map(onSuccess);
  }

  @override
  void resetHttpClientAdapter({bool force = false}) {
    _dio.httpClientAdapter.close(force: force);
    _dio.httpClientAdapter = DefaultHttpAdapter(
      validateCertificate: options.validateCertificate,
      context: options.securityContext,
      proxy: options.proxyCallback,
      onBadCertificate: options.onBadCertificate,
    );
  }

  @override
  CleanClient clone() {
    return CleanClientImpl._(
      Dio(_dio.options),
      options,
    );
  }
}
