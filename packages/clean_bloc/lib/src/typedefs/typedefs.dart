import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:clean_bloc/src/states/clean_state.dart';
import 'package:clean_bloc/src/states/paginated_state.dart';
import 'package:flutter/material.dart';

/// default paginated bloc builder
typedef DefaultPaginatedBlocBuilder<T> = Widget Function(
  BuildContext,
  PaginatedState<T>,
);

/// default bloc builder
typedef DefaultBlocBuilder<T> = Widget Function(BuildContext, CleanState<T>);

/// default cubit/bloc error builder
typedef ErrorBuilder = Widget Function(
  BuildContext context,
  BaseError error,
);

/// default cubit/bloc loading builder
typedef LoadingBuilder = Widget Function(BuildContext context);

/// default cubit/bloc success builder
typedef SuccessBuilder<T> = Widget Function(
  BuildContext context,
  T data,
);

/// default paginated cubit/bloc success builder
typedef PaginatedSuccessBuilder<T> = Widget Function(
  BuildContext context,
  List<T> data, {
  bool isLoadingMore,
});

/// Loading callback
typedef OnLoadingListener = void Function(BuildContext context);

/// Error callback
typedef OnErrorListener = void Function(BuildContext context, BaseError error);

/// Success callback
typedef OnSuccessListener<T> = void Function(BuildContext context, T data);

/// Paginated Success callback
typedef OnPaginatedSuccessListener<T> = void Function({
  BuildContext context,
  List<T> data,
  bool isLoadingMore,
});

/// Error callback for cubit and bloc
typedef ErrorHandler<T> = CleanState<T> Function(BaseError error);

/// Success callback for cubit and bloc
typedef SuccessHandler<T> = CleanState<T> Function(T data);

/// Error callback for paginated cubit and bloc
typedef PaginatedErrorHandler<T> = PaginatedState<T> Function(
  BaseError error,
);

/// Success callback for paginated cubit and bloc
typedef PaginatedSuccessHandler<T> = PaginatedState<T> Function(
  PaginatedResponse<T> response,
);
