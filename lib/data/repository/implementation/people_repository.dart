import '../../../../config.dart';
import 'package:swapiflutter/data/dto/people_detail_response_dto.dart';
import 'package:swapiflutter/data/dto/people_list_response_dto.dart';
import 'package:swapiflutter/data/repository/interface/i_people_repository.dart';
import 'package:swapiflutter/data/service/http_client/i_http_client.dart';
import 'package:swapiflutter/domain/dto/people_detail_dto.dart';
import 'package:swapiflutter/domain/dto/people_list_dto.dart';
import 'package:swapiflutter/domain/entity/people_detail.dart';
import 'package:swapiflutter/domain/entity/people_list_item.dart';

class PeopleRepository implements IPeopleRepository {
  late IHttpClient _httpClient;

  PeopleRepository({required IHttpClient httpClient}) {
    _httpClient = httpClient;
  }

  @override
  Future<PeopleListDTO> getList({String? url}) async {
    Map<String, dynamic> response =
        await _httpClient.get(url: url ?? ConfigProject.domain + '/people');
    PeopleListResponseDTO peopleListDTO =
        PeopleListResponseDTO.fromJson(response);

    return PeopleListDTO(
        count: peopleListDTO.count,
        results: peopleListDTO.results
            .map((item) => PeopleListItem(name: item.name, url: item.url))
            .toList(),
        nextPageUrl: peopleListDTO.next,
        prevPageUrl: peopleListDTO.previous);
  }

  @override
  Future<PeopleDetailDTO> getDetail({required String url}) async {
    Map<String, dynamic> response = await _httpClient.get(url: url);
    PeopleDetailResponseDTO peopleDTO =
        PeopleDetailResponseDTO.fromJson(response);

    return PeopleDetailDTO(
        detail: PeopleDetail(name: peopleDTO.name, gender: peopleDTO.gender));
  }
}
