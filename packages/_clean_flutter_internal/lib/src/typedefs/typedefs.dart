import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';

/// Callback for [Future] that returns [Result]
typedef FutureResult<T> = Future<Result<T>>;

/// Callback for [Future] that returns [Result] [PaginatedResponse]
typedef PaginatedResult<T> = Future<Result<PaginatedResponse<T>>>;

/// Callback for FromJson
typedef FromJson<T> = T Function(Map<String, dynamic> json);

/// Callback for OnSuccess
typedef OnSuccessCallback<T> = T Function(Object data);
