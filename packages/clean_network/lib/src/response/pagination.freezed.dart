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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'page':
      return PagePagination.fromJson(json);
    case 'cursor':
      return CursorPagination.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Pagination',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Pagination {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)
        page,
    required TResult Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)
        cursor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)?
        page,
    TResult? Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)?
        cursor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)?
        page,
    TResult Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)?
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {@JsonKey(readValue: _readCurrentPage) int currentPage,
      @JsonKey(readValue: _readPerPage) int perPage,
      @JsonKey(readValue: _readTotalPages) int total});
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
@JsonSerializable()
class _$PagePaginationImpl extends PagePagination {
  const _$PagePaginationImpl(
      {@JsonKey(readValue: _readCurrentPage) this.currentPage = 1,
      @JsonKey(readValue: _readPerPage) this.perPage = 20,
      @JsonKey(readValue: _readTotalPages) this.total = 0,
      final String? $type})
      : $type = $type ?? 'page',
        super._();

  factory _$PagePaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagePaginationImplFromJson(json);

  @override
  @JsonKey(readValue: _readCurrentPage)
  final int currentPage;
  @override
  @JsonKey(readValue: _readPerPage)
  final int perPage;
  @override
  @JsonKey(readValue: _readTotalPages)
  final int total;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(ignore: true)
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
    required TResult Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)
        page,
    required TResult Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)
        cursor,
  }) {
    return page(currentPage, perPage, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)?
        page,
    TResult? Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)?
        cursor,
  }) {
    return page?.call(currentPage, perPage, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)?
        page,
    TResult Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)?
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

  @override
  Map<String, dynamic> toJson() {
    return _$$PagePaginationImplToJson(
      this,
    );
  }
}

abstract class PagePagination extends Pagination {
  const factory PagePagination(
          {@JsonKey(readValue: _readCurrentPage) final int currentPage,
          @JsonKey(readValue: _readPerPage) final int perPage,
          @JsonKey(readValue: _readTotalPages) final int total}) =
      _$PagePaginationImpl;
  const PagePagination._() : super._();

  factory PagePagination.fromJson(Map<String, dynamic> json) =
      _$PagePaginationImpl.fromJson;

  @JsonKey(readValue: _readCurrentPage)
  int get currentPage;
  @JsonKey(readValue: _readPerPage)
  int get perPage;
  @JsonKey(readValue: _readTotalPages)
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
  $Res call(
      {@JsonKey(readValue: _readStartCursor) String startCursor,
      @JsonKey(readValue: _readEndCursor) String endCursor,
      @JsonKey(readValue: _readNextPage) bool hasNextPage});
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
@JsonSerializable()
class _$CursorPaginationImpl extends CursorPagination {
  const _$CursorPaginationImpl(
      {@JsonKey(readValue: _readStartCursor) required this.startCursor,
      @JsonKey(readValue: _readEndCursor) required this.endCursor,
      @JsonKey(readValue: _readNextPage) required this.hasNextPage,
      final String? $type})
      : $type = $type ?? 'cursor',
        super._();

  factory _$CursorPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CursorPaginationImplFromJson(json);

  @override
  @JsonKey(readValue: _readStartCursor)
  final String startCursor;
  @override
  @JsonKey(readValue: _readEndCursor)
  final String endCursor;
  @override
  @JsonKey(readValue: _readNextPage)
  final bool hasNextPage;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(ignore: true)
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
    required TResult Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)
        page,
    required TResult Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)
        cursor,
  }) {
    return cursor(startCursor, endCursor, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)?
        page,
    TResult? Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)?
        cursor,
  }) {
    return cursor?.call(startCursor, endCursor, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(readValue: _readCurrentPage) int currentPage,
            @JsonKey(readValue: _readPerPage) int perPage,
            @JsonKey(readValue: _readTotalPages) int total)?
        page,
    TResult Function(
            @JsonKey(readValue: _readStartCursor) String startCursor,
            @JsonKey(readValue: _readEndCursor) String endCursor,
            @JsonKey(readValue: _readNextPage) bool hasNextPage)?
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

  @override
  Map<String, dynamic> toJson() {
    return _$$CursorPaginationImplToJson(
      this,
    );
  }
}

abstract class CursorPagination extends Pagination {
  const factory CursorPagination(
      {@JsonKey(readValue: _readStartCursor) required final String startCursor,
      @JsonKey(readValue: _readEndCursor) required final String endCursor,
      @JsonKey(readValue: _readNextPage)
      required final bool hasNextPage}) = _$CursorPaginationImpl;
  const CursorPagination._() : super._();

  factory CursorPagination.fromJson(Map<String, dynamic> json) =
      _$CursorPaginationImpl.fromJson;

  @JsonKey(readValue: _readStartCursor)
  String get startCursor;
  @JsonKey(readValue: _readEndCursor)
  String get endCursor;
  @JsonKey(readValue: _readNextPage)
  bool get hasNextPage;
  @JsonKey(ignore: true)
  _$$CursorPaginationImplCopyWith<_$CursorPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
