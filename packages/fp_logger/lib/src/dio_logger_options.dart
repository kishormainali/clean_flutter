import 'package:equatable/equatable.dart';

/// {@template logger_options}
/// Options for the dio logger.
/// {@endtemplate}
class DioLoggerOptions extends Equatable {
  const DioLoggerOptions({
    this.request = true,
    this.requestHeader = false,
    this.requestBody = false,
    this.responseHeader = false,
    this.responseBody = true,
    this.error = true,
  });

  /// Whether to log the request.
  final bool request;

  /// Whether to log the request header.
  final bool requestHeader;

  /// Whether to log the request body.
  final bool requestBody;

  /// Whether to log the response header.
  final bool responseHeader;

  /// Whether to log the response body.
  final bool responseBody;

  /// Whether to log the error.
  final bool error;

  @override
  List<Object?> get props => [
        request,
        requestHeader,
        requestBody,
        responseHeader,
        responseBody,
        error,
      ];
}
