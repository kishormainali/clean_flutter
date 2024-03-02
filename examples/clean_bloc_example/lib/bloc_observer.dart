import 'package:bloc/bloc.dart';
import 'package:fp_util/fp_util.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Logger.e('BLOC ERROR:::', error: error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    Logger.i('BLOC CHANGE::: ${change.currentState} -> ${change.nextState}');
    super.onChange(bloc, change);
  }
}
