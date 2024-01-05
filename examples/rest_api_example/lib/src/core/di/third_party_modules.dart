import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModules {
  @lazySingleton
  CleanClient get client => CleanClient(
        options: const CleanBaseOptions(
          baseUrl: 'https://jsonplaceholder.typicode.com',
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
}
