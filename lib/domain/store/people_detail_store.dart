import 'package:mobx/mobx.dart';
import 'package:swapiflutter/domain/entity/people_detail.dart';

part 'people_detail_store.g.dart';

class PeopleDetailStore = _PeopleDetailStore with _$PeopleDetailStore;

abstract class _PeopleDetailStore with Store {
  @observable
  PeopleDetail? _people;

  @action
  setPeople(PeopleDetail value) => _people = value;

  @computed
  PeopleDetail? get people => _people;
}
