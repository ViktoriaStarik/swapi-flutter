import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/data/repository/interface/i_people_repository.dart';
import 'package:swapiflutter/domain/dto/people_list_dto.dart';
import 'package:swapiflutter/domain/store/people_list_store.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_list_use_case.dart';

class GetPeopleListUseCase implements IGetPeopleListUseCase {
  late IPeopleRepository _repository;
  late PeopleListStore _peopleListStore;

  GetPeopleListUseCase({required IPeopleRepository repository}) {
    _repository = repository;
    _peopleListStore = ServiceLocator.locator.get<PeopleListStore>();
  }

  @override
  Future invoke({bool after = false}) async {
    if (after && _peopleListStore.nextPageUrl == null) return;
    String? url = after ? _peopleListStore.nextPageUrl : null;

    PeopleListDTO people = await _repository.getList(url: url);

    if (after) {
      _peopleListStore.addPeoples(people.results);
    } else {
      _peopleListStore.setPeoples(people.results);
    }
    _peopleListStore.setCount(people.count);
    _peopleListStore.setNextPageUrl(people.nextPageUrl);
    _peopleListStore.setPrevPageUrl(people.prevPageUrl);
  }
}
