// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
sealed class Pagination with _$Pagination {
  const Pagination._();

  /// page based pagination
  const factory Pagination.page({
    @JsonKey(readValue: _readCurrentPage) @Default(1) int currentPage,
    @JsonKey(readValue: _readPerPage) @Default(20) int perPage,
    @JsonKey(readValue: _readTotalPages) @Default(0) int total,
  }) = PagePagination;

  /// cursor based pagination
  const factory Pagination.cursor({
    @JsonKey(readValue: _readStartCursor) required String startCursor,
    @JsonKey(readValue: _readEndCursor) required String endCursor,
    @JsonKey(readValue: _readNextPage) required bool hasNextPage,
  }) = CursorPagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  /// Returns true if the pagination is page based
  bool get isPageBased => this is PagePagination;

  /// Returns true if the pagination is cursor based
  bool get isCursorBased => this is CursorPagination;

  /// Returns true if the pagination has a next page
  bool get hasNextPage {
    return when(
      page: (currentPage, perPage, total) =>
          currentPage < ((total / perPage).ceil()),
      cursor: (_, __, hasNextPage) => hasNextPage,
    );
  }
}

int? _readCurrentPage(Map json, String key) {
  final expectedKey = ['current_page', 'page', 'currentPage'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey];
}

int? _readPerPage(Map json, String key) {
  final expectedKey = ['per_page', 'perPage'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey];
}

int? _readTotalPages(Map json, String key) {
  final expectedKey = ['total', 'total_docs', 'totalDocs', 'count'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey];
}

String _readStartCursor(Map json, String key) {
  final expectedKey = ['start_cursor', 'startCursor'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey];
}

String _readEndCursor(Map json, String key) {
  final expectedKey = ['end_cursor', 'endCursor'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey];
}

bool _readNextPage(Map json, String key) {
  final expectedKey = ['has_next_page', 'hasNextPage'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey];
}
