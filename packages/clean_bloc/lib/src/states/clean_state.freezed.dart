// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clean_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CleanState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(T data, bool refresh) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(T data, bool refresh)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(T data, bool refresh)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleanStateCopyWith<T, $Res> {
  factory $CleanStateCopyWith(
          CleanState<T> value, $Res Function(CleanState<T>) then) =
      _$CleanStateCopyWithImpl<T, $Res, CleanState<T>>;
}

/// @nodoc
class _$CleanStateCopyWithImpl<T, $Res, $Val extends CleanState<T>>
    implements $CleanStateCopyWith<T, $Res> {
  _$CleanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CleanStateInitialImplCopyWith<T, $Res> {
  factory _$$CleanStateInitialImplCopyWith(_$CleanStateInitialImpl<T> value,
          $Res Function(_$CleanStateInitialImpl<T>) then) =
      __$$CleanStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CleanStateInitialImplCopyWithImpl<T, $Res>
    extends _$CleanStateCopyWithImpl<T, $Res, _$CleanStateInitialImpl<T>>
    implements _$$CleanStateInitialImplCopyWith<T, $Res> {
  __$$CleanStateInitialImplCopyWithImpl(_$CleanStateInitialImpl<T> _value,
      $Res Function(_$CleanStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CleanStateInitialImpl<T> extends CleanStateInitial<T> {
  const _$CleanStateInitialImpl() : super._();

  @override
  String toString() {
    return 'CleanState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleanStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(T data, bool refresh) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(T data, bool refresh)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(T data, bool refresh)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }
}

abstract class CleanStateInitial<T> extends CleanState<T> {
  const factory CleanStateInitial() = _$CleanStateInitialImpl<T>;
  const CleanStateInitial._() : super._();
}

/// @nodoc
abstract class _$$CleanStateLoadingImplCopyWith<T, $Res> {
  factory _$$CleanStateLoadingImplCopyWith(_$CleanStateLoadingImpl<T> value,
          $Res Function(_$CleanStateLoadingImpl<T>) then) =
      __$$CleanStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CleanStateLoadingImplCopyWithImpl<T, $Res>
    extends _$CleanStateCopyWithImpl<T, $Res, _$CleanStateLoadingImpl<T>>
    implements _$$CleanStateLoadingImplCopyWith<T, $Res> {
  __$$CleanStateLoadingImplCopyWithImpl(_$CleanStateLoadingImpl<T> _value,
      $Res Function(_$CleanStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CleanStateLoadingImpl<T> extends CleanStateLoading<T> {
  const _$CleanStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'CleanState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleanStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(T data, bool refresh) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(T data, bool refresh)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(T data, bool refresh)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class CleanStateLoading<T> extends CleanState<T> {
  const factory CleanStateLoading() = _$CleanStateLoadingImpl<T>;
  const CleanStateLoading._() : super._();
}

/// @nodoc
abstract class _$$CleanStateErrorImplCopyWith<T, $Res> {
  factory _$$CleanStateErrorImplCopyWith(_$CleanStateErrorImpl<T> value,
          $Res Function(_$CleanStateErrorImpl<T>) then) =
      __$$CleanStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$CleanStateErrorImplCopyWithImpl<T, $Res>
    extends _$CleanStateCopyWithImpl<T, $Res, _$CleanStateErrorImpl<T>>
    implements _$$CleanStateErrorImplCopyWith<T, $Res> {
  __$$CleanStateErrorImplCopyWithImpl(_$CleanStateErrorImpl<T> _value,
      $Res Function(_$CleanStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CleanStateErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$CleanStateErrorImpl<T> extends CleanStateError<T> {
  const _$CleanStateErrorImpl({required this.error}) : super._();

  @override
  final BaseError error;

  @override
  String toString() {
    return 'CleanState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleanStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CleanStateErrorImplCopyWith<T, _$CleanStateErrorImpl<T>> get copyWith =>
      __$$CleanStateErrorImplCopyWithImpl<T, _$CleanStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(T data, bool refresh) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(T data, bool refresh)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(T data, bool refresh)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class CleanStateError<T> extends CleanState<T> {
  const factory CleanStateError({required final BaseError error}) =
      _$CleanStateErrorImpl<T>;
  const CleanStateError._() : super._();

  BaseError get error;
  @JsonKey(ignore: true)
  _$$CleanStateErrorImplCopyWith<T, _$CleanStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CleanStateSuccessImplCopyWith<T, $Res> {
  factory _$$CleanStateSuccessImplCopyWith(_$CleanStateSuccessImpl<T> value,
          $Res Function(_$CleanStateSuccessImpl<T>) then) =
      __$$CleanStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, bool refresh});
}

/// @nodoc
class __$$CleanStateSuccessImplCopyWithImpl<T, $Res>
    extends _$CleanStateCopyWithImpl<T, $Res, _$CleanStateSuccessImpl<T>>
    implements _$$CleanStateSuccessImplCopyWith<T, $Res> {
  __$$CleanStateSuccessImplCopyWithImpl(_$CleanStateSuccessImpl<T> _value,
      $Res Function(_$CleanStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? refresh = null,
  }) {
    return _then(_$CleanStateSuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CleanStateSuccessImpl<T> extends CleanStateSuccess<T> {
  const _$CleanStateSuccessImpl({required this.data, this.refresh = false})
      : super._();

  @override
  final T data;
  @override
  @JsonKey()
  final bool refresh;

  @override
  String toString() {
    return 'CleanState<$T>.success(data: $data, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleanStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CleanStateSuccessImplCopyWith<T, _$CleanStateSuccessImpl<T>>
      get copyWith =>
          __$$CleanStateSuccessImplCopyWithImpl<T, _$CleanStateSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(T data, bool refresh) success,
  }) {
    return success(data, refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(T data, bool refresh)? success,
  }) {
    return success?.call(data, refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(T data, bool refresh)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, refresh);
    }
    return orElse();
  }
}

abstract class CleanStateSuccess<T> extends CleanState<T> {
  const factory CleanStateSuccess({required final T data, final bool refresh}) =
      _$CleanStateSuccessImpl<T>;
  const CleanStateSuccess._() : super._();

  T get data;
  bool get refresh;
  @JsonKey(ignore: true)
  _$$CleanStateSuccessImplCopyWith<T, _$CleanStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
