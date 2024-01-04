import 'package:clean_bloc/src/builders/default_builders.dart';
import 'package:clean_bloc/src/states/paginated_clean_state.dart';
import 'package:clean_bloc/src/typedefs/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template paginated_clean_builder}
/// A Flutter widget for building PaginatedCleanBloc states.
/// {@endtemplate}
class PaginatedCleanBuilder<B extends BlocBase<PaginatedCleanState<T>>, T>
    extends BlocBuilder<B, PaginatedCleanState<T>> {
  /// {@macro paginated_clean_builder}
  PaginatedCleanBuilder({
    super.key,

    /// Loading builder
    ///
    /// if [builder] is provided, this will be ignored
    ///
    CleanLoadingBuilder? loadingBuilder,

    /// Error builder
    ///
    /// if [builder] is provided, this will be ignored
    ///
    CleanErrorBuilder? errorBuilder,

    /// Success builder
    ///
    /// if [builder] is provided, this will be ignored
    ///
    PaginatedCleanSuccessBuilder<T>? successBuilder,

    /// default bloc builder
    ///
    /// if [successBuilder] is provided, this will be ignored
    ///
    DefaultPaginatedBlocBuilder<T>? builder,

    /// Bloc instance
    super.bloc,

    /// Build when
    super.buildWhen,
  })  : assert(
          successBuilder != null || builder != null,
          'successBuilder or builder must be provided',
        ),
        super(
          builder: builder ??
              (context, state) {
                return state.maybeWhen(
                  orElse: () =>
                      loadingBuilder?.call(context) ??
                      DefaultBuilders.defaultLoadingBuilder(context),
                  error: (error) =>
                      errorBuilder?.call(context, error) ??
                      DefaultBuilders.defaultErrorBuilder(context, error),
                  success: (data, loadingMore) {
                    assert(successBuilder != null,
                        'successBuilder must be provided');
                    return successBuilder!(context, data, loadingMore);
                  },
                );
              },
        );
}

/// {@template paginated_clean_listener}
/// A Flutter widget for listening to PaginatedCleanBloc state changes.
/// {@endtemplate}
class PaginatedCleanListener<B extends BlocBase<PaginatedCleanState<T>>, T>
    extends BlocListener<B, PaginatedCleanState<T>> {
  /// {@macro paginated_clean_listener}
  PaginatedCleanListener({
    super.key,

    /// Loading callback
    OnLoadingListener? onLoading,

    /// Error callback
    OnErrorListener? onError,

    /// Success callback
    OnPaginatedSuccessListener<T>? onSuccess,

    /// listen when
    super.listenWhen,

    /// Bloc instance
    super.bloc,

    /// Child widget
    required super.child,
  }) : super(
          listener: (context, state) {
            state.whenOrNull(
              loading: () => onLoading?.call(context),
              error: (error) => onError?.call(context, error),
              success: (data, isLoadingMore) => onSuccess?.call(
                context,
                data,
                isLoadingMore,
              ),
            );
          },
        );
}

/// {@template paginated_clean_consumer}
/// A Flutter widget for building and listening to PaginatedCleanBloc state changes.
/// {@endtemplate}
class PaginatedCleanConsumer<B extends BlocBase<PaginatedCleanState<T>>, T, E>
    extends BlocConsumer<B, PaginatedCleanState<T>> {
  /// {@macro paginated_clean_consumer}
  PaginatedCleanConsumer({
    super.key,

    /// Loading callback
    OnLoadingListener? onLoading,

    /// Error callback
    OnErrorListener? onError,

    /// Success callback
    OnPaginatedSuccessListener<T>? onSuccess,

    /// Loading builder
    CleanLoadingBuilder? loadingBuilder,

    /// Error builder
    CleanErrorBuilder? errorBuilder,

    /// Success builder
    ///
    /// if [builder] is provided, this will be ignored
    ///
    PaginatedCleanSuccessBuilder<T>? successBuilder,

    /// default bloc builder
    ///
    /// if [successBuilder] is provided, this will be ignored
    ///
    DefaultPaginatedBlocBuilder<T>? builder,

    /// Build when
    super.buildWhen,

    /// Listen when
    super.listenWhen,

    /// Bloc instance
    super.bloc,
  })  : assert(
          successBuilder != null || builder != null,
          'successBuilder or builder must be provided',
        ),
        super(
          builder: builder ??
              (context, state) {
                return state.maybeWhen(
                  orElse: () =>
                      loadingBuilder?.call(context) ??
                      DefaultBuilders.defaultLoadingBuilder(context),
                  error: (error) =>
                      errorBuilder?.call(context, error) ??
                      DefaultBuilders.defaultErrorBuilder(context, error),
                  success: (data, isLoadingMore) {
                    assert(successBuilder != null,
                        'successBuilder must be provided');
                    return successBuilder!(
                      context,
                      data,
                      isLoadingMore,
                    );
                  },
                );
              },
          listener: (context, state) {
            state.whenOrNull(
              loading: () => onLoading?.call(context),
              error: (error) => onError?.call(context, error),
              success: (data, isLoadingMore) => onSuccess?.call(
                context,
                data,
                isLoadingMore,
              ),
            );
          },
        );
}
