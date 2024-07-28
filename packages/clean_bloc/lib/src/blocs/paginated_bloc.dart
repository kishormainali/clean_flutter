import 'dart:async';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_bloc/clean_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template paginated_clean_bloc}
/// A [Bloc] which handles paginated data.
/// {@endtemplate}
abstract class PaginatedBloc<T> extends Bloc<PaginatedEvent, PaginatedState<T>>
    with PaginationMixin, CompleterMixin {
  /// {@macro paginated_clean_bloc}
  PaginatedBloc() : super(const PaginatedState.initial()) {
    on<PaginatedEventInit>(_handleInit);
    on<PaginatedEventLoadMore>(_handleLoadMore);
  }

  /// Remote call
  PaginatedResult<T> remoteCall(Pagination page);

  /// initial page params
  @override
  Pagination get initialPage => const Pagination.page();

  /// error handler for custom logic
  PaginatedErrorHandler<T> get onErrorState =>
      (error) => PaginatedState.error(error: error);

  /// success handler for custom logic
  PaginatedSuccessHandler<T> get onSuccessState =>
      (response) => PaginatedState.success(
            data: response.data,
          );

  /// call initial event
  void init() {
    add(const PaginatedEventInit());
  }

  /// future for refresh indicator
  Future<void> refresh() {
    resetPagination();
    add(const PaginatedEventInit(showLoading: false));
    return future;
  }

  /// handle init event
  FutureOr<void> _handleInit(
    PaginatedEventInit event,
    Emitter<PaginatedState<T>> emit,
  ) async {
    if (event.showLoading) {
      emit(const PaginatedState.loading());
    }

    final response = await remoteCall(initialPage);
    emit(
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
    if (!event.showLoading) complete();
  }

  /// handle load more event
  FutureOr<void> _handleLoadMore(
    PaginatedEventLoadMore event,
    Emitter<PaginatedState<T>> emit,
  ) async {
    if (state is PaginatedSuccess<T>) {
      final currentState = state as PaginatedSuccess<T>;
      if (currentState.isLoadingMore || !hasNextPage) return;
      emit(
        currentState.copyWith(
          isLoadingMore: true,
        ),
      );
      final response = await remoteCall(nextParams);
      emit(
        response.fold(
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
        ),
      );
    }
  }
}
