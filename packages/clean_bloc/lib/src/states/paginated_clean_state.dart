import 'package:clean_network/clean_network.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_clean_state.freezed.dart';

/// {@template paginated_clean_state}
/// Base state for paginated_clean_bloc
/// {@endtemplate}
@Freezed(map: FreezedMapOptions.none, genericArgumentFactories: true)
sealed class PaginatedCleanState<T> with _$PaginatedCleanState<T> {
  /// {@macro paginated_clean_state}
  /// PaginatedInitial state
  const factory PaginatedCleanState.initial() = PaginatedCleanInitial<T>;

  /// {@macro paginated_clean_state}
  /// PaginatedLoading state
  const factory PaginatedCleanState.loading() = PaginatedCleanLoading<T>;

  /// {@macro paginated_clean_state}
  /// PaginatedError state
  const factory PaginatedCleanState.error({
    required BaseError error,
  }) = PaginatedCleanError<T>;

  /// {@macro paginated_clean_state}
  /// PaginatedSuccess state
  const factory PaginatedCleanState.success({
    required List<T> data,
    @Default(false) bool isLoadingMore,
  }) = PaginatedCleanSuccess<T>;
}
