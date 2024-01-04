import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/core/di/injector.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> setupInjection() async {
  // ignore: await_only_futures
  await getIt.init();
  return getIt.allReady();
}
