import 'package:clean_bloc/src/builders/default_builders.dart';
import 'package:clean_bloc/src/states/clean_state.dart';
import 'package:clean_bloc/src/typedefs/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template clean_builder}
/// A Flutter widget for building CleanBloc states.
/// {@endtemplate}
class CleanBuilder<B extends BlocBase<CleanState<T>>, T>
    extends BlocBuilder<B, CleanState<T>> {
  /// {@macro clean_builder}
  CleanBuilder({
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
    CleanSuccessBuilder<T>? successBuilder,

    /// default bloc builder
    ///
    /// if [successBuilder] is provided, this will be ignored
    ///
    DefaultBlocBuilder<T>? builder,

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
                  success: (data, _) {
                    assert(successBuilder != null,
                        'successBuilder must be provided');
                    return successBuilder!(context, data);
                  },
                );
              },
        );
}

/// {@template clean_listener}
/// A Flutter widget for listening to CleanBloc state changes.
/// {@endtemplate}
class CleanListener<B extends BlocBase<CleanState<T>>, T>
    extends BlocListener<B, CleanState<T>> {
  /// {@macro clean_listener}
  CleanListener({
    super.key,

    /// Loading callback
    ///
    ///
    OnLoadingListener? onLoading,

    /// Error callback
    ///
    ///
    OnErrorListener? onError,

    /// Success callback
    ///
    ///
    OnCleanSuccessListener<T>? onSuccess,

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
              success: (data, _) => onSuccess?.call(context, data),
            );
          },
        );
}

/// {@template clean_consumer}
/// A Flutter widget for handling CleanBloc state changes.
/// {@endtemplate}
class CleanConsumer<B extends BlocBase<CleanState<T>>, T>
    extends BlocConsumer<B, CleanState<T>> {
  /// {@macro clean_consumer}
  CleanConsumer({
    super.key,

    /// Loading callback
    ///
    /// if [builder] is provided, this will be ignored
    ///
    OnLoadingListener? onLoading,

    /// Error callback
    ///
    /// if [builder] is provided, this will be ignored
    ///
    OnErrorListener? onError,

    /// Success callback
    ///
    /// if [builder] is provided, this will be ignored
    ///
    OnCleanSuccessListener<T>? onSuccess,

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
    CleanSuccessBuilder<T>? successBuilder,

    /// default bloc builder
    ///
    /// if [successBuilder] is provided, this will be ignored
    ///
    DefaultBlocBuilder<T>? builder,

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
                  success: (data, _) {
                    assert(successBuilder != null,
                        'successBuilder must be provided');
                    return successBuilder!(context, data);
                  },
                );
              },
          listener: (context, state) {
            state.whenOrNull(
              loading: () => onLoading?.call(context),
              error: (error) => onError?.call(context, error),
              success: (data, _) => onSuccess?.call(context, data),
            );
          },
        );
}
