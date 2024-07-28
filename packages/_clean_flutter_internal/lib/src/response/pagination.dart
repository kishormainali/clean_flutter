// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@Freezed()
sealed class Pagination with _$Pagination {
  const Pagination._();

  /// page based pagination
  const factory Pagination.page({
    @Default(1) int currentPage,
    @Default(20) int perPage,
    @Default(0) int total,
  }) = PagePagination;

  /// cursor based pagination
  const factory Pagination.cursor({
    required String startCursor,
    required String endCursor,
    required bool hasNextPage,
  }) = CursorPagination;

  /// Converts a json map to a pagination
  factory Pagination.fromJson(Map<String, dynamic> json) {
    if (json['runtimeType'] == 'page') {
      return PagePagination(
        currentPage: _readCurrentPage(json, 'currentPage'),
        perPage: _readPerPage(json, 'perPage'),
        total: _readTotalPages(json, 'total'),
      );
    } else {
      return CursorPagination(
        startCursor: _readStartCursor(json, 'startCursor'),
        endCursor: _readEndCursor(json, 'endCursor'),
        hasNextPage: _readNextPage(json, 'hasNextPage'),
      );
    }
  }

  /// Converts the pagination to a json map
  Map<String, dynamic> toJson() {
    return when(
      page: (currentPage, perPage, total) => {
        'currentPage': currentPage,
        'perPage': perPage,
        'total': total,
      },
      cursor: (startCursor, endCursor, hasNextPage) => {
        'startCursor': startCursor,
        'endCursor': endCursor,
        'hasNextPage': hasNextPage,
      },
    );
  }

  /// Returns true if the pagination is page based
  bool get isPageBased => this is PagePagination;

  /// Returns true if the pagination is cursor based
  bool get isCursorBased => this is CursorPagination;

  /// Returns true if the pagination has a next page
  bool get hasNextPage {
    return when(
      page: (currentPage, perPage, total) => currentPage < ((total / perPage).ceil()),
      cursor: (_, __, hasNextPage) => hasNextPage,
    );
  }
}

int _readCurrentPage(Map<String, dynamic> json, String key) {
  final expectedKey = ['current_page', 'page', 'currentPage'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return int.tryParse(json[expectedKey]) ?? 1;
}

int _readPerPage(Map<String, dynamic> json, String key) {
  final expectedKey = ['per_page', 'perPage'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return int.tryParse(json[expectedKey]) ?? 20;
}

int _readTotalPages(Map<String, dynamic> json, String key) {
  final expectedKey = ['total', 'total_docs', 'totalDocs', 'count'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return int.tryParse(json[expectedKey]) ?? 0;
}

String _readStartCursor(Map<String, dynamic> json, String key) {
  final expectedKey = ['start_cursor', 'startCursor'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey].toString();
}

String _readEndCursor(Map<String, dynamic> json, String key) {
  final expectedKey = ['end_cursor', 'endCursor'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return json[expectedKey].toString();
}

bool _readNextPage(Map<String, dynamic> json, String key) {
  final expectedKey = ['has_next_page', 'hasNextPage'].firstWhere(
    (element) => json.containsKey(element),
    orElse: () => key,
  );
  return bool.parse(json[expectedKey]);
}
