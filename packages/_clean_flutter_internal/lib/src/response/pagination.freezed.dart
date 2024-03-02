// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pagination {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, int perPage, int total) page,
    required TResult Function(
            String startCursor, String endCursor, bool hasNextPage)
        cursor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, int perPage, int total)? page,
    TResult? Function(String startCursor, String endCursor, bool hasNextPage)?
        cursor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, int perPage, int total)? page,
    TResult Function(String startCursor, String endCursor, bool hasNextPage)?
        cursor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PagePagination value) page,
    required TResult Function(CursorPagination value) cursor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PagePagination value)? page,
    TResult? Function(CursorPagination value)? cursor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PagePagination value)? page,
    TResult Function(CursorPagination value)? cursor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PagePaginationImplCopyWith<$Res> {
  factory _$$PagePaginationImplCopyWith(_$PagePaginationImpl value,
          $Res Function(_$PagePaginationImpl) then) =
      __$$PagePaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentPage, int perPage, int total});
}

/// @nodoc
class __$$PagePaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PagePaginationImpl>
    implements _$$PagePaginationImplCopyWith<$Res> {
  __$$PagePaginationImplCopyWithImpl(
      _$PagePaginationImpl _value, $Res Function(_$PagePaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$PagePaginationImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PagePaginationImpl extends PagePagination {
  const _$PagePaginationImpl(
      {this.currentPage = 1, this.perPage = 20, this.total = 0})
      : super._();

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'Pagination.page(currentPage: $currentPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagePaginationImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, perPage, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagePaginationImplCopyWith<_$PagePaginationImpl> get copyWith =>
      __$$PagePaginationImplCopyWithImpl<_$PagePaginationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, int perPage, int total) page,
    required TResult Function(
            String startCursor, String endCursor, bool hasNextPage)
        cursor,
  }) {
    return page(currentPage, perPage, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, int perPage, int total)? page,
    TResult? Function(String startCursor, String endCursor, bool hasNextPage)?
        cursor,
  }) {
    return page?.call(currentPage, perPage, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, int perPage, int total)? page,
    TResult Function(String startCursor, String endCursor, bool hasNextPage)?
        cursor,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(currentPage, perPage, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PagePagination value) page,
    required TResult Function(CursorPagination value) cursor,
  }) {
    return page(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PagePagination value)? page,
    TResult? Function(CursorPagination value)? cursor,
  }) {
    return page?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PagePagination value)? page,
    TResult Function(CursorPagination value)? cursor,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class PagePagination extends Pagination {
  const factory PagePagination(
      {final int currentPage,
      final int perPage,
      final int total}) = _$PagePaginationImpl;
  const PagePagination._() : super._();

  int get currentPage;
  int get perPage;
  int get total;
  @JsonKey(ignore: true)
  _$$PagePaginationImplCopyWith<_$PagePaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CursorPaginationImplCopyWith<$Res> {
  factory _$$CursorPaginationImplCopyWith(_$CursorPaginationImpl value,
          $Res Function(_$CursorPaginationImpl) then) =
      __$$CursorPaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String startCursor, String endCursor, bool hasNextPage});
}

/// @nodoc
class __$$CursorPaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$CursorPaginationImpl>
    implements _$$CursorPaginationImplCopyWith<$Res> {
  __$$CursorPaginationImplCopyWithImpl(_$CursorPaginationImpl _value,
      $Res Function(_$CursorPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startCursor = null,
    Object? endCursor = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$CursorPaginationImpl(
      startCursor: null == startCursor
          ? _value.startCursor
          : startCursor // ignore: cast_nullable_to_non_nullable
              as String,
      endCursor: null == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CursorPaginationImpl extends CursorPagination {
  const _$CursorPaginationImpl(
      {required this.startCursor,
      required this.endCursor,
      required this.hasNextPage})
      : super._();

  @override
  final String startCursor;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'Pagination.cursor(startCursor: $startCursor, endCursor: $endCursor, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CursorPaginationImpl &&
            (identical(other.startCursor, startCursor) ||
                other.startCursor == startCursor) &&
            (identical(other.endCursor, endCursor) ||
                other.endCursor == endCursor) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startCursor, endCursor, hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CursorPaginationImplCopyWith<_$CursorPaginationImpl> get copyWith =>
      __$$CursorPaginationImplCopyWithImpl<_$CursorPaginationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, int perPage, int total) page,
    required TResult Function(
            String startCursor, String endCursor, bool hasNextPage)
        cursor,
  }) {
    return cursor(startCursor, endCursor, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, int perPage, int total)? page,
    TResult? Function(String startCursor, String endCursor, bool hasNextPage)?
        cursor,
  }) {
    return cursor?.call(startCursor, endCursor, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, int perPage, int total)? page,
    TResult Function(String startCursor, String endCursor, bool hasNextPage)?
        cursor,
    required TResult orElse(),
  }) {
    if (cursor != null) {
      return cursor(startCursor, endCursor, hasNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PagePagination value) page,
    required TResult Function(CursorPagination value) cursor,
  }) {
    return cursor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PagePagination value)? page,
    TResult? Function(CursorPagination value)? cursor,
  }) {
    return cursor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PagePagination value)? page,
    TResult Function(CursorPagination value)? cursor,
    required TResult orElse(),
  }) {
    if (cursor != null) {
      return cursor(this);
    }
    return orElse();
  }
}

abstract class CursorPagination extends Pagination {
  const factory CursorPagination(
      {required final String startCursor,
      required final String endCursor,
      required final bool hasNextPage}) = _$CursorPaginationImpl;
  const CursorPagination._() : super._();

  String get startCursor;
  String get endCursor;
  bool get hasNextPage;
  @JsonKey(ignore: true)
  _$$CursorPaginationImplCopyWith<_$CursorPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
