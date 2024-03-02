part of 'errors.dart';

/// {@template app_error}
/// Server error
/// {@endtemplate}
final class ServerError extends BaseError {
  /// {@macro app_error}
  const ServerError({
    required super.message,
    super.stackTrace,
    this.statusCode,
  });

  final int? statusCode;
}

/// {@template network_error}
/// Network error
/// {@endtemplate}
final class NetworkError extends BaseError {
  /// {@macro network_error}
  const NetworkError({
    required super.message,
    super.stackTrace,
  });
}

/// {@template un_authorized_error}
/// UnAuthorized error
/// {@endtemplate}
final class UnAuthorizedError extends BaseError {
  /// {@macro un_authorized_error}
  const UnAuthorizedError({
    required super.message,
    super.stackTrace,
  });
}

/// {@template validation_error}
/// Validation errors
/// {@endtemplate}
final class ValidationError extends BaseError {
  /// {@macro validation_error}
  const ValidationError({
    required super.message,
    super.stackTrace,
    required this.errors,
  });

  /// Validation errors
  final dynamic errors;
}
