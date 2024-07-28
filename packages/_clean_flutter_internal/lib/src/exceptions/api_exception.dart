part of 'exceptions.dart';

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

/// {@template handle_common_error}
/// Handles common errors and returns the appropriate [ApiException].
/// {@endtemplate}
ApiException handleCommonError<T>(Object exception, StackTrace stacktrace) {
  if (exception is FormatException ||
      exception.toString().contains('is not a subtype of')) {
    return ParseException(
      message: exception.toString(),
      stackTrace: stacktrace,
    );
  }
  return ServerException(
    message: exception.toString(),
    stackTrace: stacktrace,
  );
}
