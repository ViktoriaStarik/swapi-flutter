import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/domain/store/people_list_store.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_list_use_case.dart';
import 'package:swapiflutter/presentation/screen/people_detail/index.dart';
import 'package:swapiflutter/presentation/screen/people_list/people_card.dart';
import 'package:swapiflutter/presentation/service/router/i_router.dart';
import 'package:swapiflutter/presentation/view_model/list_view_data_view_model.dart';
import 'package:swapiflutter/presentation/view_model/people_list_view_model.dart';
import 'package:swapiflutter/presentation/widget/loader/index.dart';

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

  Widget onListBuild(BuildContext context, int index) {
    if (index == data.items.length - 1) {
      onMoreLoad();
    }
    if (index == data.items.length && loading) {
      if (data.hasMore) {
        return const Loader();
      }
      return Container();
    }
    return PeopleCard(people: data.items[index]);
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
      hasMore: _storeList.hasMore,
      items: _storeList.peopleList
          .map<PeopleCardViewModel>((item) => PeopleCardViewModel(
              name: item.name, onTap: () => _onPeopleTap(item.url)))
          .toList());

  @computed
  ListViewDataViewModel get listViewData => ListViewDataViewModel(
      itemBuilder: onListBuild, itemCount: data.items.length + 1);
}
