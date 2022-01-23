import 'package:flutter/material.dart';

abstract class IRouter {
  Future<T?> routeTo<T>(String path,
      {Map<String, String?> queryParameters = const {}});

  Future<bool> back<T>();

  String get currentPath;

  RouterDelegate<Object> get delegate;

  RouteInformationParser<Object> get defaultRouteParser;
}
