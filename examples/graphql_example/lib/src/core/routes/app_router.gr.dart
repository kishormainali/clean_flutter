// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:graphql_example/src/features/launches/presentation/pages/launch_detail_page.dart'
    as _i1;
import 'package:graphql_example/src/features/launches/presentation/pages/launch_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LaunchDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LaunchDetailRouteArgs>(
          orElse: () => LaunchDetailRouteArgs(id: pathParams.getString('id')));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.LaunchDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    LaunchRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LaunchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LaunchDetailPage]
class LaunchDetailRoute extends _i3.PageRouteInfo<LaunchDetailRouteArgs> {
  LaunchDetailRoute({
    _i4.Key? key,
    required String id,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          LaunchDetailRoute.name,
          args: LaunchDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'LaunchDetailRoute';

  static const _i3.PageInfo<LaunchDetailRouteArgs> page =
      _i3.PageInfo<LaunchDetailRouteArgs>(name);
}

class LaunchDetailRouteArgs {
  const LaunchDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i4.Key? key;

  final String id;

  @override
  String toString() {
    return 'LaunchDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.LaunchPage]
class LaunchRoute extends _i3.PageRouteInfo<void> {
  const LaunchRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LaunchRoute.name,
          initialChildren: children,
        );

  static const String name = 'LaunchRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
