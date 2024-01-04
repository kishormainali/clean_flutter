import 'package:clean_network/clean_network.dart';

typedef PaginatedCleanResponse<T> = CleanResponse<PaginatedResponse<T>>;

typedef PaginatedEitherResponse<T>
    = TaskEither<BaseError, PaginatedResponse<T>>;

typedef EitherResponse<T> = TaskEither<BaseError, T>;

typedef FromJson<T> = T Function(Map<String, dynamic> json);

typedef OnSuccessCallback<T> = T Function(dynamic data);

typedef CleanResponse<T> = Task<T>;
