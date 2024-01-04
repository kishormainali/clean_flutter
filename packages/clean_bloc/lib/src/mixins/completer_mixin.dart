import 'dart:async';

/// {@template completer_mixin}
/// A mixin to complete a completer and get a future
/// {@endtemplate}
mixin CompleterMixin {
  Completer _completer = Completer();

  /// Complete the completer
  void complete() {
    if (!_completer.isCompleted) {
      _completer.complete();
      _completer = Completer();
    }
  }

  /// Get the future
  Future<void> get future => _completer.future;
}
