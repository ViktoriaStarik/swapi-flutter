import 'package:mobx/mobx.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/presentation/screen/people_list/index.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';

part 'home_screen_store_ui.g.dart';

class HomeScreenStoreUI = _HomeScreenStoreUI with _$HomeScreenStoreUI;

abstract class _HomeScreenStoreUI with Store {
  late IRouter _router;

  _HomeScreenStoreUI() {
    _router = ServiceLocator.locator.get<IRouter>();
    init();
  }

  @action
  init() {}

  onPeople() {
    _router.routeTo(PeopleListScreen.routeName);
  }
}
