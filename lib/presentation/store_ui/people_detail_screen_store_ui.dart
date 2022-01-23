import 'package:mobx/mobx.dart';
import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/domain/store/people_detail_store.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_detail_use_case.dart';
import 'package:swapiflutter/presentation/view_model/people_detail_view_model.dart';

part 'people_detail_screen_store_ui.g.dart';

class PeopleDetailScreenStoreUI = _PeopleDetailScreenStoreUI
    with _$PeopleDetailScreenStoreUI;

abstract class _PeopleDetailScreenStoreUI with Store {
  late IGetPeopleDetailUseCase _peopleCase;
  late PeopleDetailStore _store;
  String? _url;

  _PeopleDetailScreenStoreUI({String? url}) : _url = url {
    init();
  }

  @observable
  bool loading = false;

  @action
  init() async {
    _peopleCase = ServiceLocator.locator.get<IGetPeopleDetailUseCase>();
    _store = ServiceLocator.locator.get<PeopleDetailStore>();
    if (_url != null) {
      loading = true;
      await _peopleCase.invoke(url: _url!);
      loading = false;
    }
  }

  @computed
  PeopleDetailViewModel? get data => _store.people != null
      ? PeopleDetailViewModel(
          name: _store.people!.name, gender: _store.people!.gender)
      : null;
}
