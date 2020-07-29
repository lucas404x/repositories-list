// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$observableRepositoryListAtom =
      Atom(name: '_HomeControllerBase.observableRepositoryList');

  @override
  ObservableList<RepositoryModel> get observableRepositoryList {
    _$observableRepositoryListAtom.reportRead();
    return super.observableRepositoryList;
  }

  @override
  set observableRepositoryList(ObservableList<RepositoryModel> value) {
    _$observableRepositoryListAtom
        .reportWrite(value, super.observableRepositoryList, () {
      super.observableRepositoryList = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addElementsToListOnScroll(List<RepositoryModel> values) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addElementsToListOnScroll');
    try {
      return super.addElementsToListOnScroll(values);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
observableRepositoryList: ${observableRepositoryList}
    ''';
  }
}
