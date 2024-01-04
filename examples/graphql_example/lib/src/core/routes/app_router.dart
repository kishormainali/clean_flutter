import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
@singleton
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LaunchRoute.page,
          path: '/launches',
          initial: true,
        ),
        AutoRoute(
          page: LaunchDetailRoute.page,
          path: '/launches/:id',
        ),
      ];
}
