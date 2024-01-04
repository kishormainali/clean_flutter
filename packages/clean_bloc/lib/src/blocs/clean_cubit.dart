import 'dart:math';

import 'package:clean_bloc/src/mixins/completer_mixin.dart';
import 'package:clean_bloc/src/states/clean_state.dart';
import 'package:clean_bloc/src/typedefs/typedefs.dart';
import 'package:clean_network/clean_network.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../mixins/safe_emit_mixin.dart';

/// {@template clean_cubit}
/// A [Cubit] which handles a remote call and emits the appropriate state
/// {@endtemplate}
abstract class CleanCubit<T> extends Cubit<CleanState<T>> with SafeEmitMixin<CleanState<T>>, CompleterMixin {
  /// {@macro clean_cubit}
  CleanCubit() : super(CleanStateInitial<T>());

  /// The remote call to be made
  EitherResponse<T> remoteCall();

  /// error handler for custom logic
  CleanErrorHandler<T> get onErrorState => (error) => CleanState.error(error: error);

  /// success handler for custom logic
  CleanSuccessHandler<T> get onSuccessState => (data) => CleanState.success(
        data: data,

        /// this is a hack to force build the widget
        refresh: Random().nextBool(),
      );

  /// Handle a remote call and emit the appropriate state
  void init({
    showLoading = true,
  }) async {
    if (showLoading) safeEmit(CleanStateLoading<T>());
    final response = await remoteCall().run();
    safeEmit(response.match(
      onErrorState,
      onSuccessState,
    ));

    /// complete the completer only if the loading is not shown
    /// this is to prevent the refresh indicator being shown for a split second
    /// when the data is already available
    ///
    /// we only want to show the refresh indicator only when showLoading is false
    if (!showLoading) complete();
  }

  /// refresh the data
  Future<void> refresh() async {
    init(showLoading: false);
    return future;
  }
}
