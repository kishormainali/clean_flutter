import 'package:get_it/get_it.dart';
import 'package:graphql_example/src/core/di/injector.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  asExtension: false,
)
Future<void> setupInjection() async {
  // ignore: await_only_futures
  await $initGetIt(getIt);
  return getIt.allReady();
}
