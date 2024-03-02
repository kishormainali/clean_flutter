import 'package:fpdart/fpdart.dart';

import '../errors/errors.dart';
import '../response/response.dart';

typedef PaginatedCleanResponse<T> = CleanResponse<PaginatedResponse<T>>;

typedef PaginatedEitherResponse<T> = TaskEither<BaseError, PaginatedResponse<T>>;

typedef EitherResponse<T> = TaskEither<BaseError, T>;

typedef FromJson<T> = T Function(Map<String, dynamic> json);

typedef OnSuccessCallback<T> = T Function(dynamic data);

typedef CleanResponse<T> = Task<T>;
