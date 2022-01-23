import 'package:swapiflutter/core/service/service_locator/service_locator.dart';
import 'package:swapiflutter/data/repository/interface/i_people_repository.dart';
import 'package:swapiflutter/domain/dto/people_detail_dto.dart';
import 'package:swapiflutter/domain/store/people_detail_store.dart';
import 'package:swapiflutter/domain/use_case/people/interface/i_get_people_detail_use_case.dart';

class GetPeopleDetailUseCase implements IGetPeopleDetailUseCase {
  late IPeopleRepository _repository;
  late PeopleDetailStore _peopleDetailStore;

  GetPeopleDetailUseCase({required IPeopleRepository repository}) {
    _repository = repository;
    _peopleDetailStore = ServiceLocator.locator.get<PeopleDetailStore>();
  }

  @override
  Future invoke({required String url}) async {
    PeopleDetailDTO people = await _repository.getDetail(url: url);
    _peopleDetailStore.setPeople(people.detail);
  }
}
