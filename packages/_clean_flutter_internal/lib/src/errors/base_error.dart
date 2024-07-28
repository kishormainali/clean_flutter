part of 'errors.dart';

/// {@template app_error}
/// Base class for all errors in the app.
/// {@endtemplate}
abstract base class BaseError {
  /// {@macro app_error}
  const BaseError({
    required this.message,
    this.stackTrace,
  });

  /// Converts [ApiException] to [BaseError]
  ///
  factory BaseError.fromApiException(ApiException exception) {
    return switch (exception) {
      NetworkException(
        :final message,
        :final stackTrace,
      ) =>
        NetworkError(
          message: message,
          stackTrace: stackTrace,
        ),
      UnAuthorizedException(
        :final message,
        :final stackTrace,
      ) =>
        UnAuthorizedError(
          message: message,
          stackTrace: stackTrace,
        ),
      BadRequestException(
        :final message,
        :final stackTrace,
        :final errors,
      ) ||
      ValidationException(
        :final message,
        :final stackTrace,
        :final errors,
      ) =>
        ValidationError(
          message: message,
          stackTrace: stackTrace,
          errors: errors,
        ),
      _ => ServerError(
          message: exception.message,
          stackTrace: exception.stackTrace,
          statusCode: exception.code,
        ),
    };
  }

  /// Converts [Object] error to [BaseError]
  factory BaseError.fromError(
    Object error,
    StackTrace stackTrace,
  ) {
    if (error is ApiException) {
      return BaseError.fromApiException(error);
    }
    return BaseError.fromApiException(
      handleCommonError(
        error,
        stackTrace,
      ),
    );
  }

  /// Error message
  final String message;

  /// Stack trace
  final StackTrace? stackTrace;

  @override
  String toString() => message;
}
