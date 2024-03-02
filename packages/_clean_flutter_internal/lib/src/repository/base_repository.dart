import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../errors/errors.dart';
import '../exceptions/exceptions.dart';
import '../extensions/extensions.dart';
import '../network/_network_info_impl.dart';
import '../network/network.dart';
import '../typedefs/typedefs.dart';

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
              message: DioExtensionMessages.networkError,
            );
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
  @mustCallSuper
  BaseError onError(ApiException exception) {
    return BaseError.fromApiException(exception);
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
