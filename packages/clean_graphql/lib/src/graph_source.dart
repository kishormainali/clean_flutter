import 'dart:async';

import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_graphql/src/_utils.dart';
import 'package:ferry/ferry.dart' hide ServerException;
import 'package:meta/meta.dart';

typedef GraphQLSuccessHandler<R, TData> = R Function(TData data);

/// {@template graph_source}
/// A base class for all graph sources.
/// {@endtemplate}
abstract class GraphSource {
  /// {@macro graph_source}
  const GraphSource(this.client);

  /// client for making requests
  @internal
  @visibleForTesting
  final TypedLink client;

  /// Request a single operation
  Future<R> request<R, TData, TVars>({
    required OperationRequest<TData, TVars> operationRequest,
    GraphQLSuccessHandler<R, TData>? successHandler,
  }) async {
    try {
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
  // ignore: type_annotate_public_apis
  ApiException onError(exception, stackTrace) {
    if (exception is LinkException) return exception.toApiException;
    return handleCommonError(exception, stackTrace);
  }
}
