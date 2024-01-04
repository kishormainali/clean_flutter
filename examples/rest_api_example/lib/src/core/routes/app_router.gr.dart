// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:rest_api_example/src/features/posts/presentation/pages/post_detail_page.dart'
    as _i1;
import 'package:rest_api_example/src/features/posts/presentation/pages/post_page.dart'
    as _i2;
import 'package:rest_api_example/src/features/users/presentation/pages/users_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    PostDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PostDetailRouteArgs>(
          orElse: () => PostDetailRouteArgs(id: pathParams.getInt('id')));
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PostDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    PostRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PostPage(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UsersPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.PostDetailPage]
class PostDetailRoute extends _i4.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({
    _i5.Key? key,
    required int id,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          PostDetailRoute.name,
          args: PostDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'PostDetailRoute';

  static const _i4.PageInfo<PostDetailRouteArgs> page =
      _i4.PageInfo<PostDetailRouteArgs>(name);
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i5.Key? key;

  final int id;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.PostPage]
class PostRoute extends _i4.PageRouteInfo<void> {
  const PostRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UsersPage]
class UsersRoute extends _i4.PageRouteInfo<void> {
  const UsersRoute({List<_i4.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
