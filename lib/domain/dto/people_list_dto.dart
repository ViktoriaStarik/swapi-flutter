import 'package:swapiflutter/domain/entity/people_list_item.dart';

class PeopleListDTO {
  final int count;
  final String? prevPageUrl;
  final String? nextPageUrl;
  final List<PeopleListItem> results;

  PeopleListDTO(
      {required this.count,
        this.prevPageUrl,
        this.nextPageUrl,
        required this.results});
}
