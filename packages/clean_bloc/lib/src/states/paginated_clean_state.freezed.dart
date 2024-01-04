// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_clean_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedCleanState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool isLoadingMore) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool isLoadingMore)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool isLoadingMore)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedCleanStateCopyWith<T, $Res> {
  factory $PaginatedCleanStateCopyWith(PaginatedCleanState<T> value,
          $Res Function(PaginatedCleanState<T>) then) =
      _$PaginatedCleanStateCopyWithImpl<T, $Res, PaginatedCleanState<T>>;
}

/// @nodoc
class _$PaginatedCleanStateCopyWithImpl<T, $Res,
        $Val extends PaginatedCleanState<T>>
    implements $PaginatedCleanStateCopyWith<T, $Res> {
  _$PaginatedCleanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaginatedCleanInitialImplCopyWith<T, $Res> {
  factory _$$PaginatedCleanInitialImplCopyWith(
          _$PaginatedCleanInitialImpl<T> value,
          $Res Function(_$PaginatedCleanInitialImpl<T>) then) =
      __$$PaginatedCleanInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginatedCleanInitialImplCopyWithImpl<T, $Res>
    extends _$PaginatedCleanStateCopyWithImpl<T, $Res,
        _$PaginatedCleanInitialImpl<T>>
    implements _$$PaginatedCleanInitialImplCopyWith<T, $Res> {
  __$$PaginatedCleanInitialImplCopyWithImpl(
      _$PaginatedCleanInitialImpl<T> _value,
      $Res Function(_$PaginatedCleanInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaginatedCleanInitialImpl<T> implements PaginatedCleanInitial<T> {
  const _$PaginatedCleanInitialImpl();

  @override
  String toString() {
    return 'PaginatedCleanState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedCleanInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool isLoadingMore) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool isLoadingMore)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }
}

abstract class PaginatedCleanInitial<T> implements PaginatedCleanState<T> {
  const factory PaginatedCleanInitial() = _$PaginatedCleanInitialImpl<T>;
}

/// @nodoc
abstract class _$$PaginatedCleanLoadingImplCopyWith<T, $Res> {
  factory _$$PaginatedCleanLoadingImplCopyWith(
          _$PaginatedCleanLoadingImpl<T> value,
          $Res Function(_$PaginatedCleanLoadingImpl<T>) then) =
      __$$PaginatedCleanLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginatedCleanLoadingImplCopyWithImpl<T, $Res>
    extends _$PaginatedCleanStateCopyWithImpl<T, $Res,
        _$PaginatedCleanLoadingImpl<T>>
    implements _$$PaginatedCleanLoadingImplCopyWith<T, $Res> {
  __$$PaginatedCleanLoadingImplCopyWithImpl(
      _$PaginatedCleanLoadingImpl<T> _value,
      $Res Function(_$PaginatedCleanLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaginatedCleanLoadingImpl<T> implements PaginatedCleanLoading<T> {
  const _$PaginatedCleanLoadingImpl();

  @override
  String toString() {
    return 'PaginatedCleanState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedCleanLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool isLoadingMore) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool isLoadingMore)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class PaginatedCleanLoading<T> implements PaginatedCleanState<T> {
  const factory PaginatedCleanLoading() = _$PaginatedCleanLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PaginatedCleanErrorImplCopyWith<T, $Res> {
  factory _$$PaginatedCleanErrorImplCopyWith(_$PaginatedCleanErrorImpl<T> value,
          $Res Function(_$PaginatedCleanErrorImpl<T>) then) =
      __$$PaginatedCleanErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$PaginatedCleanErrorImplCopyWithImpl<T, $Res>
    extends _$PaginatedCleanStateCopyWithImpl<T, $Res,
        _$PaginatedCleanErrorImpl<T>>
    implements _$$PaginatedCleanErrorImplCopyWith<T, $Res> {
  __$$PaginatedCleanErrorImplCopyWithImpl(_$PaginatedCleanErrorImpl<T> _value,
      $Res Function(_$PaginatedCleanErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaginatedCleanErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$PaginatedCleanErrorImpl<T> implements PaginatedCleanError<T> {
  const _$PaginatedCleanErrorImpl({required this.error});

  @override
  final BaseError error;

  @override
  String toString() {
    return 'PaginatedCleanState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedCleanErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedCleanErrorImplCopyWith<T, _$PaginatedCleanErrorImpl<T>>
      get copyWith => __$$PaginatedCleanErrorImplCopyWithImpl<T,
          _$PaginatedCleanErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool isLoadingMore) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool isLoadingMore)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class PaginatedCleanError<T> implements PaginatedCleanState<T> {
  const factory PaginatedCleanError({required final BaseError error}) =
      _$PaginatedCleanErrorImpl<T>;

  BaseError get error;
  @JsonKey(ignore: true)
  _$$PaginatedCleanErrorImplCopyWith<T, _$PaginatedCleanErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedCleanSuccessImplCopyWith<T, $Res> {
  factory _$$PaginatedCleanSuccessImplCopyWith(
          _$PaginatedCleanSuccessImpl<T> value,
          $Res Function(_$PaginatedCleanSuccessImpl<T>) then) =
      __$$PaginatedCleanSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> data, bool isLoadingMore});
}

/// @nodoc
class __$$PaginatedCleanSuccessImplCopyWithImpl<T, $Res>
    extends _$PaginatedCleanStateCopyWithImpl<T, $Res,
        _$PaginatedCleanSuccessImpl<T>>
    implements _$$PaginatedCleanSuccessImplCopyWith<T, $Res> {
  __$$PaginatedCleanSuccessImplCopyWithImpl(
      _$PaginatedCleanSuccessImpl<T> _value,
      $Res Function(_$PaginatedCleanSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$PaginatedCleanSuccessImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaginatedCleanSuccessImpl<T> implements PaginatedCleanSuccess<T> {
  const _$PaginatedCleanSuccessImpl(
      {required final List<T> data, this.isLoadingMore = false})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'PaginatedCleanState<$T>.success(data: $data, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedCleanSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), isLoadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedCleanSuccessImplCopyWith<T, _$PaginatedCleanSuccessImpl<T>>
      get copyWith => __$$PaginatedCleanSuccessImplCopyWithImpl<T,
          _$PaginatedCleanSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool isLoadingMore) success,
  }) {
    return success(data, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool isLoadingMore)? success,
  }) {
    return success?.call(data, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, isLoadingMore);
    }
    return orElse();
  }
}

abstract class PaginatedCleanSuccess<T> implements PaginatedCleanState<T> {
  const factory PaginatedCleanSuccess(
      {required final List<T> data,
      final bool isLoadingMore}) = _$PaginatedCleanSuccessImpl<T>;

  List<T> get data;
  bool get isLoadingMore;
  @JsonKey(ignore: true)
  _$$PaginatedCleanSuccessImplCopyWith<T, _$PaginatedCleanSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
