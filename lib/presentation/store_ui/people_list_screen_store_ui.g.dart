// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_list_screen_store_ui.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PeopleListScreenStoreUI on _PeopleListScreenStoreUI, Store {
  Computed<PeopleListViewModel>? _$dataComputed;

  @override
  PeopleListViewModel get data =>
      (_$dataComputed ??= Computed<PeopleListViewModel>(() => super.data,
              name: '_PeopleListScreenStoreUI.data'))
          .value;
  Computed<ListViewDataViewModel>? _$listViewDataComputed;

  @override
  ListViewDataViewModel get listViewData => (_$listViewDataComputed ??=
          Computed<ListViewDataViewModel>(() => super.listViewData,
              name: '_PeopleListScreenStoreUI.listViewData'))
      .value;

  final _$loadingAtom = Atom(name: '_PeopleListScreenStoreUI.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_PeopleListScreenStoreUI.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$onMoreLoadAsyncAction =
      AsyncAction('_PeopleListScreenStoreUI.onMoreLoad');

  @override
  Future onMoreLoad() {
    return _$onMoreLoadAsyncAction.run(() => super.onMoreLoad());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
data: ${data},
listViewData: ${listViewData}
    ''';
  }
}
