class PeopleListViewModel {
  final String countText;
  final List<PeopleCardViewModel> items;

  PeopleListViewModel({int? count, required this.items})
      : countText = count == null
            ? 'No data'
            : (count > 1 ? '$count peoples' : '$count people');
}

class PeopleCardViewModel {
  final String name;
  final Function()? onTap;

  PeopleCardViewModel({required this.name, this.onTap});
}
