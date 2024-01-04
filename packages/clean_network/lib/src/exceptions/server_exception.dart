import 'package:clean_network/clean_network.dart';

/// {@template server_exception}
/// Exception thrown when a server error occurs.
/// {@endtemplate}
final class ServerException extends ApiException {
  /// {@macro server_exception}
  const ServerException({
    required super.message,
    super.code = 500,
    super.stackTrace,
  });
}

/// {@template network_exception}
/// Exception thrown when a network error occurs.
/// {@endtemplate}
final class NetworkException extends ApiException {
  /// {@macro network_exception}
  const NetworkException({
    required super.message,
    super.stackTrace,
  });
}

/// {@template unauthorized_exception}
/// Exception thrown when a api is missing Authorization header.
/// {@endtemplate}
final class UnAuthorizedException extends ApiException {
  /// {@macro unauthorized_exception}
  const UnAuthorizedException({
    required super.message,
    super.stackTrace,
  }) : super(code: 401);
}

/// {@template bad_request_exception}
/// Exception thrown when API returns a 400 response.
/// {@endtemplate}
final class BadRequestException extends ApiException {
  /// {@macro bad_request_exception}
  const BadRequestException({
    required super.message,
    super.stackTrace,
    this.errors,
  }) : super(code: 400);

  /// errors is a dynamic type because it can be a Map<String, dynamic> or a
  /// List<dynamic> depending on the API.
  final dynamic errors;
}

/// {@template not_found_exception}
/// Exception thrown when API returns a 404 response.
/// {@endtemplate}
final class NotFoundException extends ApiException {
  /// {@macro not_found_exception}
  const NotFoundException({
    required super.message,
    super.stackTrace,
  }) : super(code: 404);
}

/// {@template validation_exception}
/// Exception thrown when API returns a 422 response.
/// {@endtemplate}
final class ValidationException extends ApiException {
  /// {@macro validation_exception}
  const ValidationException({
    required super.message,
    super.stackTrace,
    this.errors,
  }) : super(code: 422);

  /// errors is a dynamic type because it can be a Map<String, dynamic> or a
  /// List<dynamic> depending on the API.
  final dynamic errors;
}

/// {@template parse_exception}
/// Exception thrown when client is not able to parse data.
/// {@endtemplate}
final class ParseException extends ApiException {
  /// {@macro parse_exception}
  const ParseException({
    required super.message,
    super.stackTrace,
  });
}

/// {@template timeout_exception}
/// Exception thrown when API returns a 408 response.
/// {@endtemplate}
final class TimeoutException extends ApiException {
  /// {@macro timeout_exception}
  const TimeoutException({
    required super.message,
    super.stackTrace,
  }) : super(code: 408);
}

/// {@template bad_certificate_exception}
/// Exception thrown when API returns a 495 response.
/// {@endtemplate}
final class BadCertificateException extends ApiException {
  /// {@macro bad_certificate_exception}
  const BadCertificateException({
    required super.message,
    super.stackTrace,
  }) : super(code: 495);
}

/// {@template request_cancelled_exception}
/// Exception thrown when request is cancelled.
/// {@endtemplate}
final class RequestCancelledException extends ApiException {
  /// {@macro request_cancelled_exception}
  const RequestCancelledException({
    required super.message,
    super.stackTrace,
  });
}
