import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
@lazySingleton
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: PostRoute.page,
          path: '/posts',
          initial: true,
        ),
        AutoRoute(
          page: PostDetailRoute.page,
          path: '/posts/:id',
        ),
        AutoRoute(
          page: UsersRoute.page,
          path: '/users',
        ),
      ];
}
