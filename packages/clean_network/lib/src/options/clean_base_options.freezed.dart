// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clean_base_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CleanBaseOptions {
  /// base url
  String get baseUrl => throw _privateConstructorUsedError;

  /// headers Defaults to [_defaultHeaders]
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;

  /// connect timeout Defaults to [_defaultTimeOut]
  Duration get connectTimeOut => throw _privateConstructorUsedError;

  /// receive timeout Defaults to [_defaultTimeOut]
  Duration get readTimeOut => throw _privateConstructorUsedError;

  /// send timeout Defaults to [_defaultTimeOut]
  Duration get sendTimeOut => throw _privateConstructorUsedError;

  /// idle timeout Defaults to [_defaultTimeOut]
  Duration get idleTimeout => throw _privateConstructorUsedError;

  /// extra options for dio used for graphql request
  ///
  /// end point Defaults to '/graphql'
  String get endpoint => throw _privateConstructorUsedError;

  /// request serializer Defaults to [RequestSerializer()]
  RequestSerializer get requestSerializer => throw _privateConstructorUsedError;

  /// response parser Defaults to [ResponseParser()]
  ResponseParser get responseParser => throw _privateConstructorUsedError;

  /// use get for queries Defaults to false
  bool get useGetForQueries => throw _privateConstructorUsedError;

  /// serializable errors Defaults to false
  bool get serializableErrors => throw _privateConstructorUsedError;

  /// proxy callback
  String Function(Uri?)? get proxyCallback =>
      throw _privateConstructorUsedError;

  /// validate certificates
  ValidateCertificate? get validateCertificate =>
      throw _privateConstructorUsedError;

  /// bad certificate callback
  BadCertificateCallback? get onBadCertificate =>
      throw _privateConstructorUsedError;

  /// security context
  SecurityContext? get securityContext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CleanBaseOptionsCopyWith<CleanBaseOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleanBaseOptionsCopyWith<$Res> {
  factory $CleanBaseOptionsCopyWith(
          CleanBaseOptions value, $Res Function(CleanBaseOptions) then) =
      _$CleanBaseOptionsCopyWithImpl<$Res, CleanBaseOptions>;
  @useResult
  $Res call(
      {String baseUrl,
      Map<String, dynamic> headers,
      Duration connectTimeOut,
      Duration readTimeOut,
      Duration sendTimeOut,
      Duration idleTimeout,
      String endpoint,
      RequestSerializer requestSerializer,
      ResponseParser responseParser,
      bool useGetForQueries,
      bool serializableErrors,
      String Function(Uri?)? proxyCallback,
      ValidateCertificate? validateCertificate,
      BadCertificateCallback? onBadCertificate,
      SecurityContext? securityContext});
}

/// @nodoc
class _$CleanBaseOptionsCopyWithImpl<$Res, $Val extends CleanBaseOptions>
    implements $CleanBaseOptionsCopyWith<$Res> {
  _$CleanBaseOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? headers = null,
    Object? connectTimeOut = null,
    Object? readTimeOut = null,
    Object? sendTimeOut = null,
    Object? idleTimeout = null,
    Object? endpoint = null,
    Object? requestSerializer = null,
    Object? responseParser = null,
    Object? useGetForQueries = null,
    Object? serializableErrors = null,
    Object? proxyCallback = freezed,
    Object? validateCertificate = freezed,
    Object? onBadCertificate = freezed,
    Object? securityContext = freezed,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      connectTimeOut: null == connectTimeOut
          ? _value.connectTimeOut
          : connectTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      readTimeOut: null == readTimeOut
          ? _value.readTimeOut
          : readTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      sendTimeOut: null == sendTimeOut
          ? _value.sendTimeOut
          : sendTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      idleTimeout: null == idleTimeout
          ? _value.idleTimeout
          : idleTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      requestSerializer: null == requestSerializer
          ? _value.requestSerializer
          : requestSerializer // ignore: cast_nullable_to_non_nullable
              as RequestSerializer,
      responseParser: null == responseParser
          ? _value.responseParser
          : responseParser // ignore: cast_nullable_to_non_nullable
              as ResponseParser,
      useGetForQueries: null == useGetForQueries
          ? _value.useGetForQueries
          : useGetForQueries // ignore: cast_nullable_to_non_nullable
              as bool,
      serializableErrors: null == serializableErrors
          ? _value.serializableErrors
          : serializableErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      proxyCallback: freezed == proxyCallback
          ? _value.proxyCallback
          : proxyCallback // ignore: cast_nullable_to_non_nullable
              as String Function(Uri?)?,
      validateCertificate: freezed == validateCertificate
          ? _value.validateCertificate
          : validateCertificate // ignore: cast_nullable_to_non_nullable
              as ValidateCertificate?,
      onBadCertificate: freezed == onBadCertificate
          ? _value.onBadCertificate
          : onBadCertificate // ignore: cast_nullable_to_non_nullable
              as BadCertificateCallback?,
      securityContext: freezed == securityContext
          ? _value.securityContext
          : securityContext // ignore: cast_nullable_to_non_nullable
              as SecurityContext?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CleanBaseOptionsImplCopyWith<$Res>
    implements $CleanBaseOptionsCopyWith<$Res> {
  factory _$$CleanBaseOptionsImplCopyWith(_$CleanBaseOptionsImpl value,
          $Res Function(_$CleanBaseOptionsImpl) then) =
      __$$CleanBaseOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseUrl,
      Map<String, dynamic> headers,
      Duration connectTimeOut,
      Duration readTimeOut,
      Duration sendTimeOut,
      Duration idleTimeout,
      String endpoint,
      RequestSerializer requestSerializer,
      ResponseParser responseParser,
      bool useGetForQueries,
      bool serializableErrors,
      String Function(Uri?)? proxyCallback,
      ValidateCertificate? validateCertificate,
      BadCertificateCallback? onBadCertificate,
      SecurityContext? securityContext});
}

/// @nodoc
class __$$CleanBaseOptionsImplCopyWithImpl<$Res>
    extends _$CleanBaseOptionsCopyWithImpl<$Res, _$CleanBaseOptionsImpl>
    implements _$$CleanBaseOptionsImplCopyWith<$Res> {
  __$$CleanBaseOptionsImplCopyWithImpl(_$CleanBaseOptionsImpl _value,
      $Res Function(_$CleanBaseOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? headers = null,
    Object? connectTimeOut = null,
    Object? readTimeOut = null,
    Object? sendTimeOut = null,
    Object? idleTimeout = null,
    Object? endpoint = null,
    Object? requestSerializer = null,
    Object? responseParser = null,
    Object? useGetForQueries = null,
    Object? serializableErrors = null,
    Object? proxyCallback = freezed,
    Object? validateCertificate = freezed,
    Object? onBadCertificate = freezed,
    Object? securityContext = freezed,
  }) {
    return _then(_$CleanBaseOptionsImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      connectTimeOut: null == connectTimeOut
          ? _value.connectTimeOut
          : connectTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      readTimeOut: null == readTimeOut
          ? _value.readTimeOut
          : readTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      sendTimeOut: null == sendTimeOut
          ? _value.sendTimeOut
          : sendTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      idleTimeout: null == idleTimeout
          ? _value.idleTimeout
          : idleTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      requestSerializer: null == requestSerializer
          ? _value.requestSerializer
          : requestSerializer // ignore: cast_nullable_to_non_nullable
              as RequestSerializer,
      responseParser: null == responseParser
          ? _value.responseParser
          : responseParser // ignore: cast_nullable_to_non_nullable
              as ResponseParser,
      useGetForQueries: null == useGetForQueries
          ? _value.useGetForQueries
          : useGetForQueries // ignore: cast_nullable_to_non_nullable
              as bool,
      serializableErrors: null == serializableErrors
          ? _value.serializableErrors
          : serializableErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      proxyCallback: freezed == proxyCallback
          ? _value.proxyCallback
          : proxyCallback // ignore: cast_nullable_to_non_nullable
              as String Function(Uri?)?,
      validateCertificate: freezed == validateCertificate
          ? _value.validateCertificate
          : validateCertificate // ignore: cast_nullable_to_non_nullable
              as ValidateCertificate?,
      onBadCertificate: freezed == onBadCertificate
          ? _value.onBadCertificate
          : onBadCertificate // ignore: cast_nullable_to_non_nullable
              as BadCertificateCallback?,
      securityContext: freezed == securityContext
          ? _value.securityContext
          : securityContext // ignore: cast_nullable_to_non_nullable
              as SecurityContext?,
    ));
  }
}

/// @nodoc

class _$CleanBaseOptionsImpl extends _CleanBaseOptions {
  const _$CleanBaseOptionsImpl(
      {required this.baseUrl,
      final Map<String, dynamic> headers = _defaultHeaders,
      this.connectTimeOut = _defaultTimeOut,
      this.readTimeOut = _defaultTimeOut,
      this.sendTimeOut = _defaultTimeOut,
      this.idleTimeout = _defaultTimeOut,
      this.endpoint = '/graphql',
      this.requestSerializer = const RequestSerializer(),
      this.responseParser = const ResponseParser(),
      this.useGetForQueries = false,
      this.serializableErrors = false,
      this.proxyCallback,
      this.validateCertificate,
      this.onBadCertificate,
      this.securityContext})
      : _headers = headers,
        super._();

  /// base url
  @override
  final String baseUrl;

  /// headers Defaults to [_defaultHeaders]
  final Map<String, dynamic> _headers;

  /// headers Defaults to [_defaultHeaders]
  @override
  @JsonKey()
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  /// connect timeout Defaults to [_defaultTimeOut]
  @override
  @JsonKey()
  final Duration connectTimeOut;

  /// receive timeout Defaults to [_defaultTimeOut]
  @override
  @JsonKey()
  final Duration readTimeOut;

  /// send timeout Defaults to [_defaultTimeOut]
  @override
  @JsonKey()
  final Duration sendTimeOut;

  /// idle timeout Defaults to [_defaultTimeOut]
  @override
  @JsonKey()
  final Duration idleTimeout;

  /// extra options for dio used for graphql request
  ///
  /// end point Defaults to '/graphql'
  @override
  @JsonKey()
  final String endpoint;

  /// request serializer Defaults to [RequestSerializer()]
  @override
  @JsonKey()
  final RequestSerializer requestSerializer;

  /// response parser Defaults to [ResponseParser()]
  @override
  @JsonKey()
  final ResponseParser responseParser;

  /// use get for queries Defaults to false
  @override
  @JsonKey()
  final bool useGetForQueries;

  /// serializable errors Defaults to false
  @override
  @JsonKey()
  final bool serializableErrors;

  /// proxy callback
  @override
  final String Function(Uri?)? proxyCallback;

  /// validate certificates
  @override
  final ValidateCertificate? validateCertificate;

  /// bad certificate callback
  @override
  final BadCertificateCallback? onBadCertificate;

  /// security context
  @override
  final SecurityContext? securityContext;

  @override
  String toString() {
    return 'CleanBaseOptions(baseUrl: $baseUrl, headers: $headers, connectTimeOut: $connectTimeOut, readTimeOut: $readTimeOut, sendTimeOut: $sendTimeOut, idleTimeout: $idleTimeout, endpoint: $endpoint, requestSerializer: $requestSerializer, responseParser: $responseParser, useGetForQueries: $useGetForQueries, serializableErrors: $serializableErrors, proxyCallback: $proxyCallback, validateCertificate: $validateCertificate, onBadCertificate: $onBadCertificate, securityContext: $securityContext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleanBaseOptionsImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.connectTimeOut, connectTimeOut) ||
                other.connectTimeOut == connectTimeOut) &&
            (identical(other.readTimeOut, readTimeOut) ||
                other.readTimeOut == readTimeOut) &&
            (identical(other.sendTimeOut, sendTimeOut) ||
                other.sendTimeOut == sendTimeOut) &&
            (identical(other.idleTimeout, idleTimeout) ||
                other.idleTimeout == idleTimeout) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.requestSerializer, requestSerializer) ||
                other.requestSerializer == requestSerializer) &&
            (identical(other.responseParser, responseParser) ||
                other.responseParser == responseParser) &&
            (identical(other.useGetForQueries, useGetForQueries) ||
                other.useGetForQueries == useGetForQueries) &&
            (identical(other.serializableErrors, serializableErrors) ||
                other.serializableErrors == serializableErrors) &&
            (identical(other.proxyCallback, proxyCallback) ||
                other.proxyCallback == proxyCallback) &&
            (identical(other.validateCertificate, validateCertificate) ||
                other.validateCertificate == validateCertificate) &&
            (identical(other.onBadCertificate, onBadCertificate) ||
                other.onBadCertificate == onBadCertificate) &&
            (identical(other.securityContext, securityContext) ||
                other.securityContext == securityContext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseUrl,
      const DeepCollectionEquality().hash(_headers),
      connectTimeOut,
      readTimeOut,
      sendTimeOut,
      idleTimeout,
      endpoint,
      requestSerializer,
      responseParser,
      useGetForQueries,
      serializableErrors,
      proxyCallback,
      validateCertificate,
      onBadCertificate,
      securityContext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CleanBaseOptionsImplCopyWith<_$CleanBaseOptionsImpl> get copyWith =>
      __$$CleanBaseOptionsImplCopyWithImpl<_$CleanBaseOptionsImpl>(
          this, _$identity);
}

abstract class _CleanBaseOptions extends CleanBaseOptions {
  const factory _CleanBaseOptions(
      {required final String baseUrl,
      final Map<String, dynamic> headers,
      final Duration connectTimeOut,
      final Duration readTimeOut,
      final Duration sendTimeOut,
      final Duration idleTimeout,
      final String endpoint,
      final RequestSerializer requestSerializer,
      final ResponseParser responseParser,
      final bool useGetForQueries,
      final bool serializableErrors,
      final String Function(Uri?)? proxyCallback,
      final ValidateCertificate? validateCertificate,
      final BadCertificateCallback? onBadCertificate,
      final SecurityContext? securityContext}) = _$CleanBaseOptionsImpl;
  const _CleanBaseOptions._() : super._();

  @override

  /// base url
  String get baseUrl;
  @override

  /// headers Defaults to [_defaultHeaders]
  Map<String, dynamic> get headers;
  @override

  /// connect timeout Defaults to [_defaultTimeOut]
  Duration get connectTimeOut;
  @override

  /// receive timeout Defaults to [_defaultTimeOut]
  Duration get readTimeOut;
  @override

  /// send timeout Defaults to [_defaultTimeOut]
  Duration get sendTimeOut;
  @override

  /// idle timeout Defaults to [_defaultTimeOut]
  Duration get idleTimeout;
  @override

  /// extra options for dio used for graphql request
  ///
  /// end point Defaults to '/graphql'
  String get endpoint;
  @override

  /// request serializer Defaults to [RequestSerializer()]
  RequestSerializer get requestSerializer;
  @override

  /// response parser Defaults to [ResponseParser()]
  ResponseParser get responseParser;
  @override

  /// use get for queries Defaults to false
  bool get useGetForQueries;
  @override

  /// serializable errors Defaults to false
  bool get serializableErrors;
  @override

  /// proxy callback
  String Function(Uri?)? get proxyCallback;
  @override

  /// validate certificates
  ValidateCertificate? get validateCertificate;
  @override

  /// bad certificate callback
  BadCertificateCallback? get onBadCertificate;
  @override

  /// security context
  SecurityContext? get securityContext;
  @override
  @JsonKey(ignore: true)
  _$$CleanBaseOptionsImplCopyWith<_$CleanBaseOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
