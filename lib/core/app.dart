import 'package:flutter/material.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: ServiceLocator.locator.get<IRouter>().delegate,
      routeInformationParser:
          ServiceLocator.locator.get<IRouter>().defaultRouteParser,
      debugShowCheckedModeBanner: false,
    );
  }
}
