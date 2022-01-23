// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PeopleDetailStore on _PeopleDetailStore, Store {
  Computed<PeopleDetail?>? _$peopleComputed;

  @override
  PeopleDetail? get people =>
      (_$peopleComputed ??= Computed<PeopleDetail?>(() => super.people,
              name: '_PeopleDetailStore.people'))
          .value;

  final _$_peopleAtom = Atom(name: '_PeopleDetailStore._people');

  @override
  PeopleDetail? get _people {
    _$_peopleAtom.reportRead();
    return super._people;
  }

  @override
  set _people(PeopleDetail? value) {
    _$_peopleAtom.reportWrite(value, super._people, () {
      super._people = value;
    });
  }

  final _$_PeopleDetailStoreActionController =
      ActionController(name: '_PeopleDetailStore');

  @override
  dynamic setPeople(PeopleDetail value) {
    final _$actionInfo = _$_PeopleDetailStoreActionController.startAction(
        name: '_PeopleDetailStore.setPeople');
    try {
      return super.setPeople(value);
    } finally {
      _$_PeopleDetailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
people: ${people}
    ''';
  }
}
