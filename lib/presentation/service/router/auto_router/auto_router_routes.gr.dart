// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../screen/home/index.dart' as _i1;
import '../../../screen/people_detail/index.dart' as _i3;
import '../../../screen/people_list/index.dart' as _i2;

class AutoRouterRoutes extends _i4.RootStackRouter {
  AutoRouterRoutes([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    PeopleListScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PeopleListScreen());
    },
    PeopleDetailScreenRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<PeopleDetailScreenRouteArgs>(
          orElse: () =>
              PeopleDetailScreenRouteArgs(url: queryParams.optString('url')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PeopleDetailScreen(key: args.key, url: args.url));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeScreenRoute.name, path: '/'),
        _i4.RouteConfig(PeopleListScreenRoute.name, path: '/peoples'),
        _i4.RouteConfig(PeopleDetailScreenRoute.name, path: '/people-detail')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.PeopleListScreen]
class PeopleListScreenRoute extends _i4.PageRouteInfo<void> {
  const PeopleListScreenRoute()
      : super(PeopleListScreenRoute.name, path: '/peoples');

  static const String name = 'PeopleListScreenRoute';
}

/// generated route for
/// [_i3.PeopleDetailScreen]
class PeopleDetailScreenRoute
    extends _i4.PageRouteInfo<PeopleDetailScreenRouteArgs> {
  PeopleDetailScreenRoute({_i5.Key? key, String? url})
      : super(PeopleDetailScreenRoute.name,
            path: '/people-detail',
            args: PeopleDetailScreenRouteArgs(key: key, url: url),
            rawQueryParams: {'url': url});

  static const String name = 'PeopleDetailScreenRoute';
}

class PeopleDetailScreenRouteArgs {
  const PeopleDetailScreenRouteArgs({this.key, this.url});

  final _i5.Key? key;

  final String? url;

  @override
  String toString() {
    return 'PeopleDetailScreenRouteArgs{key: $key, url: $url}';
  }
}
