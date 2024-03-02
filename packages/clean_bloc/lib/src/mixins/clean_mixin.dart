import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:bloc/bloc.dart';

typedef BlocCall<T> = EitherResponse<T> Function();

mixin CleanBlocMixin<S> on BlocBase<S> {
  /// loading state
  S get loadingState;

  /// handle call
  void handleCall<T>({
    required BlocCall<T> call,
    required S Function(T data) onSuccess,
    required S Function(BaseError error) onError,
    bool emitLoading = true,
  }) async {
    if (emitLoading) emit(loadingState);
    final response = await call().run();
    emit(response.match(
      onError,
      onSuccess,
    ));
  }
}
