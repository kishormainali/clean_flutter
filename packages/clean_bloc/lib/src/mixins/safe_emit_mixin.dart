import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template safe_emit_mixin}
/// A mixin to safely emit a state
/// {@endtemplate}
mixin SafeEmitMixin<S> on Cubit<S> {
  /// This is to prevent emitting a state after the cubit has been closed
  void safeEmit(S state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
