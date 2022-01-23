import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:swapiflutter/presentation/screen/home/index.dart';
import 'package:swapiflutter/presentation/screen/people_detail/index.dart';
import 'package:swapiflutter/presentation/screen/people_list/index.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, path: HomeScreen.routeName, initial: true),
    AutoRoute(page: PeopleListScreen, path: PeopleListScreen.routeName),
    AutoRoute(page: PeopleDetailScreen, path: PeopleDetailScreen.routeName),
  ],
)
class $AutoRouterRoutes {}