import 'package:clean_graphql/clean_graphql.dart';
import 'package:fp_logger/fp_logger.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModules {
  @lazySingleton
  TypedLink get client => GraphQLClient(
        options: const ClientOptions(
          baseUrl: 'https://spacex-production.up.railway.app/',
          loggerOptions: DioLoggerOptions(
            responseBody: false,
          ),
        ),
      );
}
