// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PeopleListStore on _PeopleListStore, Store {
  Computed<List<PeopleListItem>>? _$peopleListComputed;

  @override
  List<PeopleListItem> get peopleList => (_$peopleListComputed ??=
          Computed<List<PeopleListItem>>(() => super.peopleList,
              name: '_PeopleListStore.peopleList'))
      .value;
  Computed<int?>? _$countComputed;

  @override
  int? get count => (_$countComputed ??=
          Computed<int?>(() => super.count, name: '_PeopleListStore.count'))
      .value;
  Computed<String?>? _$prevPageUrlComputed;

  @override
  String? get prevPageUrl =>
      (_$prevPageUrlComputed ??= Computed<String?>(() => super.prevPageUrl,
              name: '_PeopleListStore.prevPageUrl'))
          .value;
  Computed<String?>? _$nextPageUrlComputed;

  @override
  String? get nextPageUrl =>
      (_$nextPageUrlComputed ??= Computed<String?>(() => super.nextPageUrl,
              name: '_PeopleListStore.nextPageUrl'))
          .value;
  Computed<bool>? _$hasMoreComputed;

  @override
  bool get hasMore => (_$hasMoreComputed ??=
          Computed<bool>(() => super.hasMore, name: '_PeopleListStore.hasMore'))
      .value;

  final _$_peopleListAtom = Atom(name: '_PeopleListStore._peopleList');

  @override
  List<PeopleListItem> get _peopleList {
    _$_peopleListAtom.reportRead();
    return super._peopleList;
  }

  @override
  set _peopleList(List<PeopleListItem> value) {
    _$_peopleListAtom.reportWrite(value, super._peopleList, () {
      super._peopleList = value;
    });
  }

  final _$_countAtom = Atom(name: '_PeopleListStore._count');

  @override
  int? get _count {
    _$_countAtom.reportRead();
    return super._count;
  }

  @override
  set _count(int? value) {
    _$_countAtom.reportWrite(value, super._count, () {
      super._count = value;
    });
  }

  final _$_prevPageUrlAtom = Atom(name: '_PeopleListStore._prevPageUrl');

  @override
  String? get _prevPageUrl {
    _$_prevPageUrlAtom.reportRead();
    return super._prevPageUrl;
  }

  @override
  set _prevPageUrl(String? value) {
    _$_prevPageUrlAtom.reportWrite(value, super._prevPageUrl, () {
      super._prevPageUrl = value;
    });
  }

  final _$_nextPageUrlAtom = Atom(name: '_PeopleListStore._nextPageUrl');

  @override
  String? get _nextPageUrl {
    _$_nextPageUrlAtom.reportRead();
    return super._nextPageUrl;
  }

  @override
  set _nextPageUrl(String? value) {
    _$_nextPageUrlAtom.reportWrite(value, super._nextPageUrl, () {
      super._nextPageUrl = value;
    });
  }

  final _$_PeopleListStoreActionController =
      ActionController(name: '_PeopleListStore');

  @override
  dynamic setPeoples(List<PeopleListItem> value) {
    final _$actionInfo = _$_PeopleListStoreActionController.startAction(
        name: '_PeopleListStore.setPeoples');
    try {
      return super.setPeoples(value);
    } finally {
      _$_PeopleListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addPeoples(List<PeopleListItem> value) {
    final _$actionInfo = _$_PeopleListStoreActionController.startAction(
        name: '_PeopleListStore.addPeoples');
    try {
      return super.addPeoples(value);
    } finally {
      _$_PeopleListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCount(int value) {
    final _$actionInfo = _$_PeopleListStoreActionController.startAction(
        name: '_PeopleListStore.setCount');
    try {
      return super.setCount(value);
    } finally {
      _$_PeopleListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPrevPageUrl(String? value) {
    final _$actionInfo = _$_PeopleListStoreActionController.startAction(
        name: '_PeopleListStore.setPrevPageUrl');
    try {
      return super.setPrevPageUrl(value);
    } finally {
      _$_PeopleListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNextPageUrl(String? value) {
    final _$actionInfo = _$_PeopleListStoreActionController.startAction(
        name: '_PeopleListStore.setNextPageUrl');
    try {
      return super.setNextPageUrl(value);
    } finally {
      _$_PeopleListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
peopleList: ${peopleList},
count: ${count},
prevPageUrl: ${prevPageUrl},
nextPageUrl: ${nextPageUrl},
hasMore: ${hasMore}
    ''';
  }
}
