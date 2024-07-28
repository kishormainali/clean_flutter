import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_bloc/src/mixins/completer_mixin.dart';
import 'package:clean_bloc/src/mixins/pagination_mixin.dart';
import 'package:clean_bloc/src/mixins/safe_emit_mixin.dart';
import 'package:clean_bloc/src/states/paginated_state.dart';
import 'package:clean_bloc/src/typedefs/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template paginated_clean_cubit}
/// A [Cubit] which handles paginated data.
/// {@endtemplate}
abstract class PaginatedCleanCubit<T> extends Cubit<PaginatedState<T>> with SafeEmitMixin<PaginatedState<T>>, CompleterMixin, PaginationMixin {
  /// {@macro paginated_clean_cubit}
  PaginatedCleanCubit() : super(const PaginatedState.initial());

  /// Remote call
  PaginatedResult<T> remoteCall(Pagination page);

  /// initial pagination
  @override
  Pagination get initialPage => const Pagination.page();

  /// error handler for custom logic
  PaginatedErrorHandler<T> get onErrorState => (error) => PaginatedState.error(error: error);

  /// success handler for custom logic
  PaginatedSuccessHandler<T> get onSuccessState => (response) => PaginatedState.success(
        data: response.data,
      );

  /// Handle a remote call and emit the appropriate state
  Future<void> init({bool showLoading = true}) async {
    if (showLoading) safeEmit(const PaginatedState.loading());
    final response = await remoteCall(initialPage);
    safeEmit(
      response.fold(
        onErrorState,
        (paginatedResponse) {
          updatePagination(paginatedResponse);
          return onSuccessState(paginatedResponse);
        },
      ),
    );

    /// complete the completer only if the loading is not shown
    /// this is to prevent the refresh indicator being shown for a split second
    /// when the data is already available
    /// we only want to show the refresh indicator only when showLoading is false
    if (!showLoading) complete();
  }

  /// refresh the data
  Future<void> refresh() async {
    resetPagination();
    await init(showLoading: false);
    return future;
  }

  /// Fetch the next page of data
  Future<void> fetchMore() async {
    if (state is PaginatedSuccess<T>) {
      final currentState = state as PaginatedSuccess<T>;
      if (currentState.isLoadingMore || !hasNextPage) return;
      safeEmit(
        currentState.copyWith(
          isLoadingMore: true,
        ),
      );
      final response = await remoteCall(nextParams);
      safeEmit(
        response.fold(
          (error) {
            return currentState.copyWith(isLoadingMore: false);
          },
          (paginatedResponse) {
            updatePagination(paginatedResponse);
            final data = [
              ...currentState.data,
              ...paginatedResponse.data,
            ].toList();
            return currentState.copyWith(
              data: data,
              isLoadingMore: false,
            );
          },
        ),
      );
    }
  }
}
