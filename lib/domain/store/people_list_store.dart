import 'package:mobx/mobx.dart';
import 'package:swapiflutter/domain/entity/people_list_item.dart';

part 'people_list_store.g.dart';

class PeopleListStore = _PeopleListStore with _$PeopleListStore;

abstract class _PeopleListStore with Store {
  @observable
  List<PeopleListItem> _peopleList = ObservableList();
  @observable
  int? _count;
  @observable
  String? _prevPageUrl;
  @observable
  String? _nextPageUrl;

  @action
  setPeoples(List<PeopleListItem> value) =>
      _peopleList = ObservableList.of(value);

  @action
  addPeoples(List<PeopleListItem> value) => _peopleList.addAll(value);

  @action
  setCount(int value) => _count = value;

  @action
  setPrevPageUrl(String? value) => _prevPageUrl = value;

  @action
  setNextPageUrl(String? value) => _nextPageUrl = value;

  @computed
  List<PeopleListItem> get peopleList => _peopleList;

  @computed
  int? get count => _count;

  @computed
  String? get prevPageUrl => _prevPageUrl;

  @computed
  String? get nextPageUrl => _nextPageUrl;

  @computed
  bool get hasMore => nextPageUrl != null;
}
