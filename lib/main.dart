import 'package:flutter/material.dart';
import 'package:swapiflutter/core/app.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';

void main() {
  ServiceLocator.setupLocator();
  runApp(const App());
}
