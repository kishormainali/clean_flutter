library api_exception;

/// {@template api_exception}
/// Base class for all API exceptions.
/// {@endtemplate}
abstract base class ApiException implements Exception {
  /// {@macro api_exception}
  const ApiException({
    required this.message,
    this.code,
    this.stackTrace,
  });

  /// The error message.
  final String message;

  /// The error code.
  final int? code;

  /// The stack trace.
  final StackTrace? stackTrace;

  @override
  String toString() => message;
}
