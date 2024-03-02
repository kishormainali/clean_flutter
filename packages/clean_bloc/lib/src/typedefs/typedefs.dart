import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:flutter/material.dart';

import '../states/clean_state.dart';
import '../states/paginated_clean_state.dart';

/// default paginated bloc builder
typedef DefaultPaginatedBlocBuilder<T> = Widget Function(BuildContext, PaginatedCleanState<T>);

/// default bloc builder
typedef DefaultBlocBuilder<T> = Widget Function(BuildContext, CleanState<T>);

/// default cubit/bloc error builder
typedef CleanErrorBuilder = Widget Function(
  BuildContext context,
  BaseError error,
);

/// default cubit/bloc loading builder
typedef CleanLoadingBuilder = Widget Function(BuildContext context);

/// default cubit/bloc success builder
typedef CleanSuccessBuilder<T> = Widget Function(
  BuildContext context,
  T data,
);

/// default paginated cubit/bloc success builder
typedef PaginatedCleanSuccessBuilder<T> = Widget Function(
  BuildContext context,
  List<T> data,
  bool isLoadingMore,
);

/// Loading callback
typedef OnLoadingListener = void Function(BuildContext context);

/// Error callback
typedef OnErrorListener = void Function(BuildContext context, BaseError error);

/// Success callback
typedef OnCleanSuccessListener<T> = void Function(BuildContext context, T data);

/// Paginated Success callback
typedef OnPaginatedSuccessListener<T> = void Function(BuildContext context, List<T> data, bool isLoadingMore);

/// Error callback for cubit and bloc
typedef CleanErrorHandler<T> = CleanState<T> Function(BaseError error);

/// Success callback for cubit and bloc
typedef CleanSuccessHandler<T> = CleanState<T> Function(T data);

/// Error callback for paginated cubit and bloc
typedef PaginatedCleanErrorHandler<T> = PaginatedCleanState<T> Function(BaseError error);

/// Success callback for paginated cubit and bloc
typedef PaginatedCleanSuccessHandler<T> = PaginatedCleanState<T> Function(PaginatedResponse<T> response);
