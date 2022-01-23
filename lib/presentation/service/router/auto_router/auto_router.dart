import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:swapiflutter/presentation/service/router/auto_router/auto_router_routes.gr.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';

class AutoRouterImplementation implements IRouter {
  late AutoRouterRoutes _rootRouter;

  AutoRouterImplementation() {
    _rootRouter = AutoRouterRoutes();
  }

  @override
  Future<T?> routeTo<T>(String path,
      {Map<String, String?>? queryParameters}) async {
    queryParameters?.removeWhere((key, value) => value == null);
    Uri uri = Uri(path: path, queryParameters: queryParameters);
    String urlWithKey = uri.toString();
    return AutoRouter.of(_rootRouter.navigatorKey.currentContext!)
        .pushNamed(urlWithKey);
  }

  @override
  Future<bool> back<T>() async {
    return AutoRouter.of(_rootRouter.navigatorKey.currentContext!).pop();
  }

  @override
  String get currentPath =>
      AutoRouter.of(_rootRouter.navigatorKey.currentContext!).current.path;

  @override
  RouterDelegate<Object> get delegate => _rootRouter.delegate();

  @override
  RouteInformationParser<Object> get defaultRouteParser =>
      _rootRouter.defaultRouteParser();
}
