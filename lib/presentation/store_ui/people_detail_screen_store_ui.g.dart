// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_detail_screen_store_ui.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PeopleDetailScreenStoreUI on _PeopleDetailScreenStoreUI, Store {
  Computed<PeopleDetailViewModel?>? _$dataComputed;

  @override
  PeopleDetailViewModel? get data =>
      (_$dataComputed ??= Computed<PeopleDetailViewModel?>(() => super.data,
              name: '_PeopleDetailScreenStoreUI.data'))
          .value;

  final _$loadingAtom = Atom(name: '_PeopleDetailScreenStoreUI.loading');

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

  final _$initAsyncAction = AsyncAction('_PeopleDetailScreenStoreUI.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
data: ${data}
    ''';
  }
}
