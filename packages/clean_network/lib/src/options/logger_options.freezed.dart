// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logger_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoggerOptions {
  /// enable logger Defaults to false
  bool get request => throw _privateConstructorUsedError;
  bool get requestHeader => throw _privateConstructorUsedError;
  bool get requestBody => throw _privateConstructorUsedError;
  bool get responseBody => throw _privateConstructorUsedError;
  bool get responseHeader => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get compact => throw _privateConstructorUsedError;
  int get maxWidth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoggerOptionsCopyWith<LoggerOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggerOptionsCopyWith<$Res> {
  factory $LoggerOptionsCopyWith(
          LoggerOptions value, $Res Function(LoggerOptions) then) =
      _$LoggerOptionsCopyWithImpl<$Res, LoggerOptions>;
  @useResult
  $Res call(
      {bool request,
      bool requestHeader,
      bool requestBody,
      bool responseBody,
      bool responseHeader,
      bool error,
      bool compact,
      int maxWidth});
}

/// @nodoc
class _$LoggerOptionsCopyWithImpl<$Res, $Val extends LoggerOptions>
    implements $LoggerOptionsCopyWith<$Res> {
  _$LoggerOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? requestHeader = null,
    Object? requestBody = null,
    Object? responseBody = null,
    Object? responseHeader = null,
    Object? error = null,
    Object? compact = null,
    Object? maxWidth = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as bool,
      requestHeader: null == requestHeader
          ? _value.requestHeader
          : requestHeader // ignore: cast_nullable_to_non_nullable
              as bool,
      requestBody: null == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as bool,
      responseBody: null == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as bool,
      responseHeader: null == responseHeader
          ? _value.responseHeader
          : responseHeader // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      compact: null == compact
          ? _value.compact
          : compact // ignore: cast_nullable_to_non_nullable
              as bool,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoggerOptionsImplCopyWith<$Res>
    implements $LoggerOptionsCopyWith<$Res> {
  factory _$$LoggerOptionsImplCopyWith(
          _$LoggerOptionsImpl value, $Res Function(_$LoggerOptionsImpl) then) =
      __$$LoggerOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool request,
      bool requestHeader,
      bool requestBody,
      bool responseBody,
      bool responseHeader,
      bool error,
      bool compact,
      int maxWidth});
}

/// @nodoc
class __$$LoggerOptionsImplCopyWithImpl<$Res>
    extends _$LoggerOptionsCopyWithImpl<$Res, _$LoggerOptionsImpl>
    implements _$$LoggerOptionsImplCopyWith<$Res> {
  __$$LoggerOptionsImplCopyWithImpl(
      _$LoggerOptionsImpl _value, $Res Function(_$LoggerOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? requestHeader = null,
    Object? requestBody = null,
    Object? responseBody = null,
    Object? responseHeader = null,
    Object? error = null,
    Object? compact = null,
    Object? maxWidth = null,
  }) {
    return _then(_$LoggerOptionsImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as bool,
      requestHeader: null == requestHeader
          ? _value.requestHeader
          : requestHeader // ignore: cast_nullable_to_non_nullable
              as bool,
      requestBody: null == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as bool,
      responseBody: null == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as bool,
      responseHeader: null == responseHeader
          ? _value.responseHeader
          : responseHeader // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      compact: null == compact
          ? _value.compact
          : compact // ignore: cast_nullable_to_non_nullable
              as bool,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoggerOptionsImpl implements _LoggerOptions {
  const _$LoggerOptionsImpl(
      {this.request = true,
      this.requestHeader = false,
      this.requestBody = false,
      this.responseBody = true,
      this.responseHeader = false,
      this.error = true,
      this.compact = false,
      this.maxWidth = 140});

  /// enable logger Defaults to false
  @override
  @JsonKey()
  final bool request;
  @override
  @JsonKey()
  final bool requestHeader;
  @override
  @JsonKey()
  final bool requestBody;
  @override
  @JsonKey()
  final bool responseBody;
  @override
  @JsonKey()
  final bool responseHeader;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool compact;
  @override
  @JsonKey()
  final int maxWidth;

  @override
  String toString() {
    return 'LoggerOptions(request: $request, requestHeader: $requestHeader, requestBody: $requestBody, responseBody: $responseBody, responseHeader: $responseHeader, error: $error, compact: $compact, maxWidth: $maxWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggerOptionsImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.requestHeader, requestHeader) ||
                other.requestHeader == requestHeader) &&
            (identical(other.requestBody, requestBody) ||
                other.requestBody == requestBody) &&
            (identical(other.responseBody, responseBody) ||
                other.responseBody == responseBody) &&
            (identical(other.responseHeader, responseHeader) ||
                other.responseHeader == responseHeader) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.compact, compact) || other.compact == compact) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, requestHeader,
      requestBody, responseBody, responseHeader, error, compact, maxWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggerOptionsImplCopyWith<_$LoggerOptionsImpl> get copyWith =>
      __$$LoggerOptionsImplCopyWithImpl<_$LoggerOptionsImpl>(this, _$identity);
}

abstract class _LoggerOptions implements LoggerOptions {
  const factory _LoggerOptions(
      {final bool request,
      final bool requestHeader,
      final bool requestBody,
      final bool responseBody,
      final bool responseHeader,
      final bool error,
      final bool compact,
      final int maxWidth}) = _$LoggerOptionsImpl;

  @override

  /// enable logger Defaults to false
  bool get request;
  @override
  bool get requestHeader;
  @override
  bool get requestBody;
  @override
  bool get responseBody;
  @override
  bool get responseHeader;
  @override
  bool get error;
  @override
  bool get compact;
  @override
  int get maxWidth;
  @override
  @JsonKey(ignore: true)
  _$$LoggerOptionsImplCopyWith<_$LoggerOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
