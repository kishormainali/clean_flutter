import 'package:clean_network/clean_core.dart';
import 'package:clean_network/clean_network.dart';

/// method for handling exceptions
Future<T> tryCatch<T>(
  Future<Response<dynamic>> Function() function,
  OnSuccessCallback<T> onSuccess,
) async {
  try {
    final response = await function();
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return onSuccess(response.data);
    }
    throw ServerException(
      message: response.statusMessage ?? DioExtensionMessages.unexpectedError,
      code: response.statusCode,
      stackTrace: StackTrace.current,
    );
  } on DioException catch (exception) {
    throw exception.toApiException;
  } catch (exception, stacktrace) {
    if (exception is ApiException) rethrow;
    throw handleCommonError(exception, stacktrace);
  }
}
