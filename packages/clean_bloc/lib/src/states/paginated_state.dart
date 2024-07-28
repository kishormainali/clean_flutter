import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_state.freezed.dart';

/// {@template paginated_clean_state}
/// Base state for paginated_clean_bloc
/// {@endtemplate}
@Freezed(map: FreezedMapOptions.none, genericArgumentFactories: true)
sealed class PaginatedState<T> with _$PaginatedState<T> {
  /// {@macro paginated_clean_state}
  /// PaginatedInitial state
  const factory PaginatedState.initial() = PaginatedInitial<T>;

  /// {@macro paginated_clean_state}
  /// PaginatedLoading state
  const factory PaginatedState.loading() = PaginatedLoading<T>;

  /// {@macro paginated_clean_state}
  /// PaginatedError state
  const factory PaginatedState.error({
    required BaseError error,
  }) = PaginatedError<T>;

  /// {@macro paginated_clean_state}
  /// PaginatedSuccess state
  const factory PaginatedState.success({
    required List<T> data,

    /// hack to make bloc_builder rebuild when data changes
    @Default(false) bool refresh,
    @Default(false) bool isLoadingMore,
  }) = PaginatedSuccess<T>;
}
