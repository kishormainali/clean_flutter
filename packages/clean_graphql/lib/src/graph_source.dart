import 'dart:async';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_graphql/src/_utils.dart';
import 'package:ferry/ferry.dart' hide ServerException;
import 'package:fpdart/fpdart.dart';
import 'package:meta/meta.dart';

typedef GraphQLSuccessHandler<R, TData> = R Function(TData data);

abstract class GraphSource {
  const GraphSource(this.client);

  @internal
  @visibleForTesting
  final TypedLink client;

  /// future request
  CleanResponse<R> request<R, TData, TVars>({
    required OperationRequest<TData, TVars> operationRequest,
    GraphQLSuccessHandler<R, TData>? successHandler,
  }) {
    try {
      return Task(() async {
        final response = await client.request(operationRequest).first;
        if (response.hasErrors) {
          throw BadRequestException(
            message: DioExtensionMessages.badRequestError,
            errors: response.graphqlErrors,
            stackTrace: StackTrace.current,
          );
        }
        if (response.data != null) {
          if (successHandler != null) {
            return successHandler(response.data as TData);
          }
          return response.data as R;
        }
        throw ServerException(
          message: DioExtensionMessages.unexpectedError,
          stackTrace: StackTrace.current,
        );
      });
    } catch (exception, stacktrace) {
      if (exception is ApiException) rethrow;
      throw onError(exception, stacktrace);
    }
  }

  /// stream request
  Stream<OperationResponse<TData, TVars>> stream<TData, TVars>({
    required OperationRequest<TData, TVars> operationRequest,
  }) {
    return client.request(operationRequest);
  }

  /// custom error handling
  @protected
  @mustCallSuper
  @visibleForTesting
  ApiException onError(exception, stackTrace) {
    if (exception is LinkException) return exception.toApiException;
    return handleCommonError(exception, stackTrace);
  }
}
