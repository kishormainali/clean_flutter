import 'package:clean_network/clean_network.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clean_state.freezed.dart';

/// {@template clean_state}
/// Base state for clean_bloc
/// {@endtemplate}
@Freezed(map: FreezedMapOptions.none, genericArgumentFactories: true)
sealed class CleanState<T> with _$CleanState<T> {
  const CleanState._();

  /// {@macro clean_state}
  /// Initial state
  const factory CleanState.initial() = CleanStateInitial<T>;

  /// {@macro clean_state}
  /// Loading state
  const factory CleanState.loading() = CleanStateLoading<T>;

  /// {@macro clean_state}
  /// Error state
  const factory CleanState.error({
    required BaseError error,
  }) = CleanStateError<T>;

  /// {@macro clean_state}
  /// Success state
  const factory CleanState.success({
    required T data,
    @Default(false) bool refresh,
  }) = CleanStateSuccess<T>;
}
