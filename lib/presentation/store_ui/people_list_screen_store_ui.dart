import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/domain/store/people_list_store.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_list_use_case.dart';
import 'package:swapiflutter/presentation/screen/people_detail/index.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';
import 'package:swapiflutter/presentation/view_model/people_list_view_model.dart';

part 'people_list_screen_store_ui.g.dart';

class PeopleListScreenStoreUI = _PeopleListScreenStoreUI
    with _$PeopleListScreenStoreUI;

abstract class _PeopleListScreenStoreUI with Store {
  late IGetPeopleListUseCase _peopleCase;
  late PeopleListStore _storeList;

  _PeopleListScreenStoreUI() {
    init();
  }

  @observable
  bool loading = false;

  @action
  init() async {
    _peopleCase = ServiceLocator.locator.get<IGetPeopleListUseCase>();
    _storeList = ServiceLocator.locator.get<PeopleListStore>();
    loading = true;
    await _peopleCase.invoke();
    loading = false;
  }

  bool onScroll(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
      onMoreLoad();
    }
    return true;
  }

  @action
  onMoreLoad() async {
    if (loading) return;
    loading = true;
    await _peopleCase.invoke(after: true);
    loading = false;
  }

  _onPeopleTap(String url) {
    ServiceLocator.locator
        .get<IRouter>()
        .routeTo(PeopleDetailScreen.routeName, queryParameters: {'url': url});
  }

  @computed
  PeopleListViewModel get data => PeopleListViewModel(
      count: _storeList.count,
      items: _storeList.peopleList
          .map<PeopleCardViewModel>((item) => PeopleCardViewModel(
              name: item.name, onTap: () => _onPeopleTap(item.url)))
          .toList());
}
