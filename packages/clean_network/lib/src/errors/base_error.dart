/// {@template app_error}
/// Base class for all errors in the app.
/// {@endtemplate}
abstract base class BaseError {
  /// {@macro app_error}
  const BaseError({
    required this.message,
    this.stackTrace,
  });

  /// Error message
  final String message;

  /// Stack trace
  final StackTrace? stackTrace;

  @override
  String toString() => message;
}
