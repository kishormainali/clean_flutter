import 'dart:async';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_bloc/src/events/paginated_clean_event.dart';
import 'package:clean_bloc/src/mixins/completer_mixin.dart';
import 'package:clean_bloc/src/mixins/pagination_mixin.dart';
import 'package:clean_bloc/src/states/paginated_clean_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../typedefs/typedefs.dart';

/// {@template paginated_clean_bloc}
/// A [Bloc] which handles paginated data.
/// {@endtemplate}
abstract class PaginatedCleanBloc<T> extends Bloc<PaginatedCleanEvent, PaginatedCleanState<T>> with PaginationMixin, CompleterMixin {
  /// {@macro paginated_clean_bloc}
  PaginatedCleanBloc() : super(const PaginatedCleanState.initial()) {
    on<PaginatedCleanEventInit>(_handleInit);
    on<PaginatedCleanEventLoadMore>(_handleLoadMore);
  }

  /// Remote call
  PaginatedEitherResponse<T> remoteCall(Pagination page);

  /// initial page params
  @override
  Pagination get initialPage => const Pagination.page();

  /// error handler for custom logic
  PaginatedCleanErrorHandler<T> get onErrorState => (error) => PaginatedCleanState.error(error: error);

  /// success handler for custom logic
  PaginatedCleanSuccessHandler<T> get onSuccessState => (response) => PaginatedCleanState.success(
        data: response.data,
        isLoadingMore: false,
      );

  /// call initial event
  void init() {
    add(const PaginatedCleanEventInit());
  }

  /// future for refresh indicator
  Future<void> refresh() {
    resetPagination();
    add(const PaginatedCleanEventInit(showLoading: false));
    return future;
  }

  /// handle init event
  FutureOr<void> _handleInit(
    PaginatedCleanEventInit event,
    Emitter<PaginatedCleanState<T>> emit,
  ) async {
    if (event.showLoading) {
      emit(const PaginatedCleanState.loading());
    }

    final response = await remoteCall(initialPage).run();
    emit(response.match(
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
    if (!event.showLoading) complete();
  }

  /// handle load more event
  FutureOr<void> _handleLoadMore(
    PaginatedCleanEventLoadMore event,
    Emitter<PaginatedCleanState<T>> emit,
  ) async {
    if (state is PaginatedCleanSuccess<T>) {
      final currentState = state as PaginatedCleanSuccess<T>;
      if (currentState.isLoadingMore || !hasNextPage) return;
      emit(currentState.copyWith(
        isLoadingMore: true,
      ));
      final response = await remoteCall(nextParams).run();
      emit(response.match(
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
