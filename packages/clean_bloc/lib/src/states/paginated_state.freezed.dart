// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool refresh, bool isLoadingMore)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool refresh, bool isLoadingMore)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool refresh, bool isLoadingMore)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedStateCopyWith<T, $Res> {
  factory $PaginatedStateCopyWith(
          PaginatedState<T> value, $Res Function(PaginatedState<T>) then) =
      _$PaginatedStateCopyWithImpl<T, $Res, PaginatedState<T>>;
}

/// @nodoc
class _$PaginatedStateCopyWithImpl<T, $Res, $Val extends PaginatedState<T>>
    implements $PaginatedStateCopyWith<T, $Res> {
  _$PaginatedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaginatedInitialImplCopyWith<T, $Res> {
  factory _$$PaginatedInitialImplCopyWith(_$PaginatedInitialImpl<T> value,
          $Res Function(_$PaginatedInitialImpl<T>) then) =
      __$$PaginatedInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginatedInitialImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedInitialImpl<T>>
    implements _$$PaginatedInitialImplCopyWith<T, $Res> {
  __$$PaginatedInitialImplCopyWithImpl(_$PaginatedInitialImpl<T> _value,
      $Res Function(_$PaginatedInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaginatedInitialImpl<T> implements PaginatedInitial<T> {
  const _$PaginatedInitialImpl();

  @override
  String toString() {
    return 'PaginatedState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool refresh, bool isLoadingMore)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool refresh, bool isLoadingMore)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool refresh, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }
}

abstract class PaginatedInitial<T> implements PaginatedState<T> {
  const factory PaginatedInitial() = _$PaginatedInitialImpl<T>;
}

/// @nodoc
abstract class _$$PaginatedLoadingImplCopyWith<T, $Res> {
  factory _$$PaginatedLoadingImplCopyWith(_$PaginatedLoadingImpl<T> value,
          $Res Function(_$PaginatedLoadingImpl<T>) then) =
      __$$PaginatedLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginatedLoadingImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedLoadingImpl<T>>
    implements _$$PaginatedLoadingImplCopyWith<T, $Res> {
  __$$PaginatedLoadingImplCopyWithImpl(_$PaginatedLoadingImpl<T> _value,
      $Res Function(_$PaginatedLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaginatedLoadingImpl<T> implements PaginatedLoading<T> {
  const _$PaginatedLoadingImpl();

  @override
  String toString() {
    return 'PaginatedState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool refresh, bool isLoadingMore)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool refresh, bool isLoadingMore)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool refresh, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class PaginatedLoading<T> implements PaginatedState<T> {
  const factory PaginatedLoading() = _$PaginatedLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PaginatedErrorImplCopyWith<T, $Res> {
  factory _$$PaginatedErrorImplCopyWith(_$PaginatedErrorImpl<T> value,
          $Res Function(_$PaginatedErrorImpl<T>) then) =
      __$$PaginatedErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$PaginatedErrorImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedErrorImpl<T>>
    implements _$$PaginatedErrorImplCopyWith<T, $Res> {
  __$$PaginatedErrorImplCopyWithImpl(_$PaginatedErrorImpl<T> _value,
      $Res Function(_$PaginatedErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaginatedErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$PaginatedErrorImpl<T> implements PaginatedError<T> {
  const _$PaginatedErrorImpl({required this.error});

  @override
  final BaseError error;

  @override
  String toString() {
    return 'PaginatedState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedErrorImplCopyWith<T, _$PaginatedErrorImpl<T>> get copyWith =>
      __$$PaginatedErrorImplCopyWithImpl<T, _$PaginatedErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool refresh, bool isLoadingMore)
        success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool refresh, bool isLoadingMore)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool refresh, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }
}

abstract class PaginatedError<T> implements PaginatedState<T> {
  const factory PaginatedError({required final BaseError error}) =
      _$PaginatedErrorImpl<T>;

  BaseError get error;
  @JsonKey(ignore: true)
  _$$PaginatedErrorImplCopyWith<T, _$PaginatedErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedSuccessImplCopyWith<T, $Res> {
  factory _$$PaginatedSuccessImplCopyWith(_$PaginatedSuccessImpl<T> value,
          $Res Function(_$PaginatedSuccessImpl<T>) then) =
      __$$PaginatedSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> data, bool refresh, bool isLoadingMore});
}

/// @nodoc
class __$$PaginatedSuccessImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedSuccessImpl<T>>
    implements _$$PaginatedSuccessImplCopyWith<T, $Res> {
  __$$PaginatedSuccessImplCopyWithImpl(_$PaginatedSuccessImpl<T> _value,
      $Res Function(_$PaginatedSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? refresh = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$PaginatedSuccessImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaginatedSuccessImpl<T> implements PaginatedSuccess<T> {
  const _$PaginatedSuccessImpl(
      {required final List<T> data,
      this.refresh = false,
      this.isLoadingMore = false})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// hack to make bloc_builder rebuild when data changes
  @override
  @JsonKey()
  final bool refresh;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'PaginatedState<$T>.success(data: $data, refresh: $refresh, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), refresh, isLoadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedSuccessImplCopyWith<T, _$PaginatedSuccessImpl<T>> get copyWith =>
      __$$PaginatedSuccessImplCopyWithImpl<T, _$PaginatedSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseError error) error,
    required TResult Function(List<T> data, bool refresh, bool isLoadingMore)
        success,
  }) {
    return success(data, refresh, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BaseError error)? error,
    TResult? Function(List<T> data, bool refresh, bool isLoadingMore)? success,
  }) {
    return success?.call(data, refresh, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseError error)? error,
    TResult Function(List<T> data, bool refresh, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, refresh, isLoadingMore);
    }
    return orElse();
  }
}

abstract class PaginatedSuccess<T> implements PaginatedState<T> {
  const factory PaginatedSuccess(
      {required final List<T> data,
      final bool refresh,
      final bool isLoadingMore}) = _$PaginatedSuccessImpl<T>;

  List<T> get data;

  /// hack to make bloc_builder rebuild when data changes
  bool get refresh;
  bool get isLoadingMore;
  @JsonKey(ignore: true)
  _$$PaginatedSuccessImplCopyWith<T, _$PaginatedSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
