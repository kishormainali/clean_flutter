import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_bloc/src/mixins/pagination_mixin.dart';
import 'package:clean_bloc/src/states/paginated_clean_state.dart';
import 'package:clean_bloc/src/typedefs/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../mixins/completer_mixin.dart';
import '../mixins/safe_emit_mixin.dart';

/// {@template paginated_clean_cubit}
/// A [Cubit] which handles paginated data.
/// {@endtemplate}
abstract class PaginatedCleanCubit<T> extends Cubit<PaginatedCleanState<T>> with SafeEmitMixin<PaginatedCleanState<T>>, CompleterMixin, PaginationMixin {
  /// {@macro paginated_clean_cubit}
  PaginatedCleanCubit() : super(const PaginatedCleanState.initial());

  /// Remote call
  PaginatedEitherResponse<T> remoteCall(Pagination page);

  /// initial pagination
  @override
  Pagination get initialPage => const Pagination.page();

  /// error handler for custom logic
  PaginatedCleanErrorHandler<T> get onErrorState => (error) => PaginatedCleanState.error(error: error);

  /// success handler for custom logic
  PaginatedCleanSuccessHandler<T> get onSuccessState => (response) => PaginatedCleanState.success(
        data: response.data,
        isLoadingMore: false,
      );

  /// Handle a remote call and emit the appropriate state
  void init({bool showLoading = true}) async {
    if (showLoading) safeEmit(const PaginatedCleanState.loading());
    final response = await remoteCall(initialPage).run();
    safeEmit(response.match(
      onErrorState,
      (paginatedResponse) {
        updatePagination(paginatedResponse);
        return onSuccessState(paginatedResponse);
      },
    ));

    /// complete the completer only if the loading is not shown
    /// this is to prevent the refresh indicator being shown for a split second
    /// when the data is already available
    /// we only want to show the refresh indicator only when showLoading is false
    if (!showLoading) complete();
  }

  /// refresh the data
  Future<void> refresh() async {
    resetPagination();
    init(showLoading: false);
    return future;
  }

  /// Fetch the next page of data
  void fetchMore() async {
    if (state is PaginatedCleanSuccess<T>) {
      final currentState = state as PaginatedCleanSuccess<T>;
      if (currentState.isLoadingMore || !hasNextPage) return;
      safeEmit(currentState.copyWith(
        isLoadingMore: true,
      ));
      final response = await remoteCall(nextParams).run();
      safeEmit(response.match(
        (error) {
          return currentState.copyWith(
            isLoadingMore: false,
          );
        },
        (paginatedResponse) {
          updatePagination(paginatedResponse);
          return currentState.copyWith(
            data: [
              ...currentState.data,
              ...paginatedResponse.data,
            ].toList(),
            isLoadingMore: false,
          );
        },
      ));
    }
  }
}
