import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

export 'app_router.gr.dart';

@AutoRouterConfig()
@lazySingleton
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: UsersRoute.page,
          initial: true,
          path: '/users',
        )
      ];
}
