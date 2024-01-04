import 'package:clean_network/clean_network.dart';
import 'package:clean_network/src/exceptions/_dio_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/_network_info_impl.dart';
import '../utils/_commons.dart';

/// {@template base_repository}
/// A base class for all repositories.
/// {@endtemplate}
abstract base class BaseRepository {
  const BaseRepository();

  /// default [NetworkInfo] instance
  NetworkInfo get networkInfo => const NetworkInfoImpl();

  /// weather to check internet access or not
  bool get checkInternetAccess => false;

  /// Handles network request and returns [TaskEither] with [Either] of [BaseError] or [R]
  @protected
  @visibleForTesting
  EitherResponse<R> handleNetwork<R, T>(
    CleanResponse<T> Function() request, {
    R Function(T data)? onSuccess,
    R Function()? onNoInternet,
  }) {
    return TaskEither.tryCatch(
      () async {
        if (checkInternetAccess && !(await networkInfo.isConnected)) {
          if (onNoInternet != null) {
            return onNoInternet();
          } else {
            throw const NetworkException(
                message: DioExtensionMessages.networkError);
          }
        } else {
          final response = await request().run();
          if (onSuccess != null) {
            return onSuccess(response);
          }
          return response.cast<R>();
        }
      },
      (error, stackTrace) {
        if (error is ApiException) {
          return onError(error);
        }
        return onError(handleCommonError(error, stackTrace));
      },
    );
  }

  /// Converts [ApiException] to [BaseError]
  @protected
  @visibleForTesting
  BaseError onError(ApiException exception) {
    return _errorConverter(exception);
  }

  /// Converts [ApiException] to [BaseError]
  BaseError _errorConverter(ApiException exception) {
    switch (exception.runtimeType) {
      case const (NetworkException):
        return NetworkError(
          message: exception.message,
          stackTrace: exception.stackTrace,
        );

      case const (UnAuthorizedException):
        return UnAuthorizedError(
          message: exception.message,
          stackTrace: exception.stackTrace,
        );
      case const (BadRequestException):
        return ValidationError(
          message: exception.message,
          stackTrace: exception.stackTrace,
          errors: exception.cast<BadRequestException>().errors,
        );
      case const (ValidationException):
        return ValidationError(
          message: exception.message,
          stackTrace: exception.stackTrace,
          errors: exception.cast<ValidationException>().errors,
        );
      default:
        return ServerError(
          message: exception.message,
          stackTrace: exception.stackTrace,
          statusCode: exception.code,
        );
    }
  }
}

extension on Object? {
  R cast<R>() {
    try {
      return this as R;
    } catch (_) {
      throw FormatException('Failed to cast $runtimeType to ${R.runtimeType}');
    }
  }
}
