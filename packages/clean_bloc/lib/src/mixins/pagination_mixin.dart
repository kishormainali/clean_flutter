import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';

/// {@template pagination_mixin}
/// A mixin to handle pagination
/// {@endtemplate}
mixin PaginationMixin {
  /// initial page params
  /// for cache pagination
  Pagination get initialPage;

  /// returns the pagination
  Pagination? _pagination;

  /// The current length of the list
  int _currentLength = 0;

  bool _hasNextPage = false;

  /// returns the pagination has next page
  bool get hasNextPage => _hasNextPage;

  /// reset the pagination
  void resetPagination() {
    _currentLength = 0;
    _pagination = initialPage;
  }

  /// update the pagination
  void updatePagination(PaginatedResponse response) {
    _pagination = response.pagination;
    _currentLength += response.data.length;
    _hasNextPage = _pagination!.when(
      page: (_, __, total) =>
          _pagination!.hasNextPage && _currentLength < total,
      cursor: (_, __, hasNext) => hasNext,
    );
  }

  /// returns the next page params
  Pagination get nextParams {
    assert(_pagination != null, 'Pagination is not initialized');
    return _pagination!.map(
      page: (page) => page.copyWith(
        currentPage: page.currentPage + 1,
      ),
      cursor: (cursor) => cursor,
    );
  }
}
