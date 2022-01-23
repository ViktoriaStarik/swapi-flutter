class PeopleDetailResponseDTO {
  final String name;
  final String url;
  final String gender;

  PeopleDetailResponseDTO.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        url = data['url'],
        gender = data['gender'];
}
