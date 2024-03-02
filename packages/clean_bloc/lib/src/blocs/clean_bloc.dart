import 'dart:async';
import 'dart:math';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_bloc/src/events/clean_event.dart';
import 'package:clean_bloc/src/mixins/completer_mixin.dart';
import 'package:clean_bloc/src/states/clean_state.dart';
import 'package:clean_bloc/src/typedefs/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template clean_bloc}
/// A [Bloc] which handles a remote call and emits the appropriate state
/// {@endtemplate}
abstract class CleanBloc<T> extends Bloc<CleanEvent, CleanState<T>> with CompleterMixin {
  /// {@macro clean_bloc}
  CleanBloc() : super(const CleanState.initial()) {
    on<CleanEventInit>(_handleInit);
  }

  /// Remote call
  EitherResponse<T> remoteCall();

  /// Error callback
  CleanErrorHandler<T> get onErrorState => (error) => CleanState.error(error: error);

  /// Success callback
  CleanSuccessHandler<T> get onSuccessState => (data) => CleanState.success(
        data: data,
        refresh: Random().nextBool(),
      );

  /// Handle [CleanEventInit] event
  FutureOr<void> _handleInit(CleanEventInit event, Emitter<CleanState<T>> emit) async {
    if (event.showLoading) {
      emit(const CleanState.loading());
    }
    final response = await remoteCall().run();
    emit(response.match(
      onErrorState,
      onSuccessState,
    ));

    /// complete the completer only if the loading is not shown
    /// this is to prevent the refresh indicator being shown for a split second
    /// when the data is already available
    /// we only want to show the refresh indicator only when showLoading is false
    if (!event.showLoading) complete();
  }

  /// Call this method to add [CleanEventInit] event
  ///
  /// ShortHand for `add(CleanEventInit())`
  void init() {
    add(const CleanEventInit());
  }

  /// Refresh data
  ///
  /// This method will add [CleanEventInit] event with showLoading = false
  ///
  /// ShortHand for `add(CleanEventInit(showLoading: false))`
  Future<void> refresh() {
    add(const CleanEventInit(showLoading: false));
    return future;
  }

  /// ensure that events are not being added after the bloc has been closed.
  @override
  void add(CleanEvent event) {
    if (!isClosed) {
      super.add(event);
    }
  }
}
