// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagePaginationImpl _$$PagePaginationImplFromJson(Map<String, dynamic> json) =>
    _$PagePaginationImpl(
      currentPage: _readCurrentPage(json, 'currentPage') as int? ?? 1,
      perPage: _readPerPage(json, 'perPage') as int? ?? 20,
      total: _readTotalPages(json, 'total') as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PagePaginationImplToJson(
        _$PagePaginationImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'total': instance.total,
      'runtimeType': instance.$type,
    };

_$CursorPaginationImpl _$$CursorPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$CursorPaginationImpl(
      startCursor: _readStartCursor(json, 'startCursor') as String,
      endCursor: _readEndCursor(json, 'endCursor') as String,
      hasNextPage: _readNextPage(json, 'hasNextPage') as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CursorPaginationImplToJson(
        _$CursorPaginationImpl instance) =>
    <String, dynamic>{
      'startCursor': instance.startCursor,
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
      'runtimeType': instance.$type,
    };
