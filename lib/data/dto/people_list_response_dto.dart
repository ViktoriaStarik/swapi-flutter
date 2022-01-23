import 'dart:convert';

class PeopleListResponseDTO {
  final int count;
  final String? next;
  final String? previous;
  final List<PeopleListItemResponseDTO> results;

  PeopleListResponseDTO.fromJson(Map<String, dynamic> data)
      : count = data['count'],
        next = data['next'],
        previous = data['previous'],
        results = data['results']
            .map<PeopleListItemResponseDTO>(
                (item) => PeopleListItemResponseDTO.fromJson(item))
            .toList();
}

class PeopleListItemResponseDTO {
  final String name;
  final String url;

  PeopleListItemResponseDTO.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        url = data['url'];
}
