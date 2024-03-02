part of 'extensions.dart';

/// Dio extension to convert [DioException] to [ApiException]
extension ApiExceptionDioX on DioException {
  ApiException get toApiException {
    return switch (type) {
      DioExceptionType.badResponse => _handleBadResponse(response),
      DioExceptionType.cancel => RequestCancelledException(
          message: DioExtensionMessages.requestCancelled,
          stackTrace: stackTrace,
        ),
      DioExceptionType.connectionError => NetworkException(
          message: message ?? DioExtensionMessages.networkError,
          stackTrace: stackTrace,
        ),
      DioExceptionType.connectionTimeout => TimeoutException(
          message: DioExtensionMessages.unstableConnection,
          stackTrace: stackTrace,
        ),
      DioExceptionType.receiveTimeout || DioExceptionType.sendTimeout => TimeoutException(
          message: DioExtensionMessages.requestTimeout,
          stackTrace: stackTrace,
        ),
      DioExceptionType.badCertificate => BadCertificateException(
          message: DioExtensionMessages.badCertificateError,
          stackTrace: stackTrace,
        ),
      _ => ServerException(
          message: message ?? DioExtensionMessages.unexpectedError,
          stackTrace: stackTrace,
        ),
    };
  }

  _handleBadResponse(Response? response) {
    final responseData = response!.data;
    final statusCode = response.statusCode!;
    final message = responseData['message'] ?? response.statusMessage;
    return switch (statusCode) {
      400 when response.data != null => BadRequestException(
          message: message ?? DioExtensionMessages.validationError,
          stackTrace: stackTrace,
          errors: responseData,
        ),
      408 => TimeoutException(
          message: message ?? DioExtensionMessages.requestTimeout,
          stackTrace: stackTrace,
        ),
      413 => ServerException(
          message: DioExtensionMessages.payloadToLarge,
          code: 413,
          stackTrace: stackTrace,
        ),
      422 => ValidationException(
          message: message ?? DioExtensionMessages.validationError,
          stackTrace: stackTrace,
          errors: responseData,
        ),
      401 => UnAuthorizedException(
          message: message ?? DioExtensionMessages.unauthorizedError,
          stackTrace: stackTrace,
        ),
      >= 500 || < 600 => ServerException(
          message: message ?? DioExtensionMessages.unexpectedError,
          stackTrace: stackTrace,
        ),
      _ => ServerException(
          message: message ?? DioExtensionMessages.unexpectedError,
          code: statusCode,
          stackTrace: stackTrace,
        ),
    };
  }
}

/// Dio extension messages
abstract class DioExtensionMessages {
  static const String unexpectedError = 'Unexpected error occurred please try again later.';
  static const String validationError = 'Something wrong with user input please try again.';
  static const String payloadToLarge = 'The server will not accept the request, because the request entity is too large.';
  static const String requestCancelled = 'Request was cancelled by user.';
  static const String unstableConnection = 'Looks like you have an unstable network at the moment, please try again when network stabilizes.';
  static const String networkError = 'Looks like you are not connected to the internet, please try again when you are connected to the internet.';
  static const String requestTimeout = 'Looks like the server is taking to long to respond, please try again in sometime.';
  static const String unauthorizedError = 'Looks like you are not authorized to perform this action.';
  static const String parseError = 'Looks like the server is not responding in the expected format, please try again in sometime.';
  static const String badCertificateError = 'Looks like the server is configured with a bad certificate, please try again in sometime.';
  static const String badRequestError = 'Looks like the server is not able to process the request, please try again in sometime.';
}
