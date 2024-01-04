import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModules {
  @lazySingleton
  CleanNetwork get client => CleanNetwork(
        options: const CleanBaseOptions(
          baseUrl: 'https://reqres.in/api',
        ),
      );
}
