// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graphql_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GraphRequest {
  DocumentNode get operation => throw _privateConstructorUsedError;
  String? get operationName => throw _privateConstructorUsedError;
  Map<String, dynamic> get variables => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;
  Map<String, dynamic> get extra => throw _privateConstructorUsedError;
  CancelToken? get cancelToken => throw _privateConstructorUsedError;
  Duration get sendTimeOut => throw _privateConstructorUsedError;
  Duration get receiveTimeOut => throw _privateConstructorUsedError;
  bool get useGetForQueries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GraphRequestCopyWith<GraphRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphRequestCopyWith<$Res> {
  factory $GraphRequestCopyWith(
          GraphRequest value, $Res Function(GraphRequest) then) =
      _$GraphRequestCopyWithImpl<$Res, GraphRequest>;
  @useResult
  $Res call(
      {DocumentNode operation,
      String? operationName,
      Map<String, dynamic> variables,
      Map<String, dynamic> headers,
      Map<String, dynamic> extra,
      CancelToken? cancelToken,
      Duration sendTimeOut,
      Duration receiveTimeOut,
      bool useGetForQueries});
}

/// @nodoc
class _$GraphRequestCopyWithImpl<$Res, $Val extends GraphRequest>
    implements $GraphRequestCopyWith<$Res> {
  _$GraphRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
    Object? operationName = freezed,
    Object? variables = null,
    Object? headers = null,
    Object? extra = null,
    Object? cancelToken = freezed,
    Object? sendTimeOut = null,
    Object? receiveTimeOut = null,
    Object? useGetForQueries = null,
  }) {
    return _then(_value.copyWith(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as DocumentNode,
      operationName: freezed == operationName
          ? _value.operationName
          : operationName // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: null == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
      sendTimeOut: null == sendTimeOut
          ? _value.sendTimeOut
          : sendTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      receiveTimeOut: null == receiveTimeOut
          ? _value.receiveTimeOut
          : receiveTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      useGetForQueries: null == useGetForQueries
          ? _value.useGetForQueries
          : useGetForQueries // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphRequestImplCopyWith<$Res>
    implements $GraphRequestCopyWith<$Res> {
  factory _$$GraphRequestImplCopyWith(
          _$GraphRequestImpl value, $Res Function(_$GraphRequestImpl) then) =
      __$$GraphRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentNode operation,
      String? operationName,
      Map<String, dynamic> variables,
      Map<String, dynamic> headers,
      Map<String, dynamic> extra,
      CancelToken? cancelToken,
      Duration sendTimeOut,
      Duration receiveTimeOut,
      bool useGetForQueries});
}

/// @nodoc
class __$$GraphRequestImplCopyWithImpl<$Res>
    extends _$GraphRequestCopyWithImpl<$Res, _$GraphRequestImpl>
    implements _$$GraphRequestImplCopyWith<$Res> {
  __$$GraphRequestImplCopyWithImpl(
      _$GraphRequestImpl _value, $Res Function(_$GraphRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
    Object? operationName = freezed,
    Object? variables = null,
    Object? headers = null,
    Object? extra = null,
    Object? cancelToken = freezed,
    Object? sendTimeOut = null,
    Object? receiveTimeOut = null,
    Object? useGetForQueries = null,
  }) {
    return _then(_$GraphRequestImpl(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as DocumentNode,
      operationName: freezed == operationName
          ? _value.operationName
          : operationName // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: null == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      extra: null == extra
          ? _value._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
      sendTimeOut: null == sendTimeOut
          ? _value.sendTimeOut
          : sendTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      receiveTimeOut: null == receiveTimeOut
          ? _value.receiveTimeOut
          : receiveTimeOut // ignore: cast_nullable_to_non_nullable
              as Duration,
      useGetForQueries: null == useGetForQueries
          ? _value.useGetForQueries
          : useGetForQueries // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GraphRequestImpl extends _GraphRequest {
  const _$GraphRequestImpl(
      {required this.operation,
      this.operationName,
      final Map<String, dynamic> variables = const {},
      final Map<String, dynamic> headers = const {},
      final Map<String, dynamic> extra = const {},
      this.cancelToken,
      this.sendTimeOut = _defaultTimeOut,
      this.receiveTimeOut = _defaultTimeOut,
      this.useGetForQueries = false})
      : _variables = variables,
        _headers = headers,
        _extra = extra,
        super._();

  @override
  final DocumentNode operation;
  @override
  final String? operationName;
  final Map<String, dynamic> _variables;
  @override
  @JsonKey()
  Map<String, dynamic> get variables {
    if (_variables is EqualUnmodifiableMapView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_variables);
  }

  final Map<String, dynamic> _headers;
  @override
  @JsonKey()
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  final Map<String, dynamic> _extra;
  @override
  @JsonKey()
  Map<String, dynamic> get extra {
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extra);
  }

  @override
  final CancelToken? cancelToken;
  @override
  @JsonKey()
  final Duration sendTimeOut;
  @override
  @JsonKey()
  final Duration receiveTimeOut;
  @override
  @JsonKey()
  final bool useGetForQueries;

  @override
  String toString() {
    return 'GraphRequest(operation: $operation, operationName: $operationName, variables: $variables, headers: $headers, extra: $extra, cancelToken: $cancelToken, sendTimeOut: $sendTimeOut, receiveTimeOut: $receiveTimeOut, useGetForQueries: $useGetForQueries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphRequestImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.operationName, operationName) ||
                other.operationName == operationName) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._extra, _extra) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken) &&
            (identical(other.sendTimeOut, sendTimeOut) ||
                other.sendTimeOut == sendTimeOut) &&
            (identical(other.receiveTimeOut, receiveTimeOut) ||
                other.receiveTimeOut == receiveTimeOut) &&
            (identical(other.useGetForQueries, useGetForQueries) ||
                other.useGetForQueries == useGetForQueries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      operation,
      operationName,
      const DeepCollectionEquality().hash(_variables),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_extra),
      cancelToken,
      sendTimeOut,
      receiveTimeOut,
      useGetForQueries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphRequestImplCopyWith<_$GraphRequestImpl> get copyWith =>
      __$$GraphRequestImplCopyWithImpl<_$GraphRequestImpl>(this, _$identity);
}

abstract class _GraphRequest extends GraphRequest {
  const factory _GraphRequest(
      {required final DocumentNode operation,
      final String? operationName,
      final Map<String, dynamic> variables,
      final Map<String, dynamic> headers,
      final Map<String, dynamic> extra,
      final CancelToken? cancelToken,
      final Duration sendTimeOut,
      final Duration receiveTimeOut,
      final bool useGetForQueries}) = _$GraphRequestImpl;
  const _GraphRequest._() : super._();

  @override
  DocumentNode get operation;
  @override
  String? get operationName;
  @override
  Map<String, dynamic> get variables;
  @override
  Map<String, dynamic> get headers;
  @override
  Map<String, dynamic> get extra;
  @override
  CancelToken? get cancelToken;
  @override
  Duration get sendTimeOut;
  @override
  Duration get receiveTimeOut;
  @override
  bool get useGetForQueries;
  @override
  @JsonKey(ignore: true)
  _$$GraphRequestImplCopyWith<_$GraphRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
