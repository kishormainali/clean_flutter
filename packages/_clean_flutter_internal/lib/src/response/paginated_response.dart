import 'package:_clean_flutter_internal/src/response/pagination.dart';
import 'package:_clean_flutter_internal/src/typedefs/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
  genericArgumentFactories: true,
)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    required List<T> data,
    required Pagination pagination,
  }) = _PaginatedResponse<T>;
  const PaginatedResponse._();

  /// This is the factory method that will be used
  /// to convert JSON data to a [PaginatedResponse] instance.
  ///
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// final response = PaginatedResponse.fromJson(
  ///  json.decode(responseBody) as Map<String, dynamic>,
  /// User.fromJson,
  /// );
  /// ```
  /// {@end-tool}
  ///
  /// Sample JSON response:
  ///
  /// For Page based pagination, the response should be in the following format:
  ///
  /// {@tool json_response_1}
  ///
  /// ```json
  /// {
  ///   "data": [
  ///     {
  ///       "id": 1,
  ///       "name": "John",
  ///       "email": "john@doe.com"
  ///     }
  ///   ],
  ///   "pagination|pageInfo": {
  ///     "current_page|currentPage|page": 1,
  ///     "per_pag|perPage": 15,
  ///     "total|totalDocs|total_docs|count": 1
  ///   }
  /// }
  /// ```
  /// {@end-tool}
  ///
  ///
  /// For Cursor based pagination, the response should be in the following format:
  /// {@tool json_response_2}
  ///
  /// ```json
  /// {
  ///   "data": [
  ///     {
  ///       "id": 1,
  ///       "name": "John",
  ///       "email": "john@doe.com"
  ///     }
  ///   ],
  ///   "pagination|pageInfo": {
  ///     "startCursor|start_cursor": "RandomString",
  ///     "hasNextPage|has_next_page": false,
  ///     "endCursor|end_cursor": "RandomString"
  ///   }
  /// }
  /// ```
  /// {@end-tool}
  ///
  ///
  /// Since the API response is not consistent, you can use the following snippet for page based pagination
  /// {@tool json_response_3}
  ///
  /// ```json
  /// {
  ///   "data": [
  ///     {
  ///       "id": 1,
  ///       "name": "John",
  ///       "email": "john@doe.com"
  ///     }
  ///   ],
  /// "current_page|currentPage|page": 1,
  /// "per_page|perPage": 15,
  /// "total|total_docs|totalDocs|count": 1
  /// }
  /// ```
  /// {@end-tool}
  ///
  ///  Since the API response is not consistent, you can use the following snippet for cursor based pagination
  /// {@tool json_response_4}
  ///
  /// ```json
  /// {
  ///   "data": [
  ///     {
  ///       "id": 1,
  ///       "name": "John",
  ///       "email": "john@doe.com"
  ///     }
  ///   ],
  /// "start_cursor|startCursor": "RandomString",
  /// "hasNextPage|has_next_page": false,
  /// "end_cursor|endCursor": "RandomString"
  /// }
  /// ```
  /// {@end-tool}
  ///
  ///
  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    FromJson<T> fromJsonT,
  ) {
    assert(json.containsKey('data'), 'The response must contain a data key');
    assert(json['data'] is List, 'The data must be a list');
    try {
      final response =
          List<Map<String, dynamic>>.from(json['data']).map(fromJsonT).toList();
      if (json.containsKey('pagination') || json.containsKey('pageInfo')) {
        final paginationMap =
            Map<String, dynamic>.from(json['pagination'] ?? json['pageInfo']);
        _getPaginationType(paginationMap);
        return PaginatedResponse<T>(
          data: response,
          pagination: Pagination.fromJson(paginationMap),
        );
      } else {
        _getPaginationType(json);
        return PaginatedResponse<T>(
          data: response,
          pagination: Pagination.fromJson(json),
        );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static void _getPaginationType(Map<String, dynamic> json) {
    final isPageBased = json.keys
        .any((element) => element.endsWith('page') || element.endsWith('Page'));
    if (isPageBased) {
      json['runtimeType'] = 'page';
    } else {
      json['runtimeType'] = 'cursor';
    }
  }
}
