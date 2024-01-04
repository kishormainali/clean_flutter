import 'package:example/src/core/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> setUpInjection() async {
  /// disable lint for await
  /// we need to await for the init to finish
  // ignore: await_only_futures
  await getIt.init();
  return getIt.allReady();
}
