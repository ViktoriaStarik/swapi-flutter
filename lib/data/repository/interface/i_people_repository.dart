import 'package:swapiflutter/domain/dto/people_detail_dto.dart';
import 'package:swapiflutter/domain/dto/people_list_dto.dart';

abstract class IPeopleRepository {
  Future<PeopleListDTO> getList({String? url});
  Future<PeopleDetailDTO> getDetail({required String url});
}
