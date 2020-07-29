// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_info_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RepositoryInfoController on _RepositoryInfoControllerBase, Store {
  final _$repositoryDataAtom =
      Atom(name: '_RepositoryInfoControllerBase.repositoryData');

  @override
  RepositoryModel get repositoryData {
    _$repositoryDataAtom.reportRead();
    return super.repositoryData;
  }

  @override
  set repositoryData(RepositoryModel value) {
    _$repositoryDataAtom.reportWrite(value, super.repositoryData, () {
      super.repositoryData = value;
    });
  }

  final _$_initAsyncAction = AsyncAction('_RepositoryInfoControllerBase._init');

  @override
  Future _init() {
    return _$_initAsyncAction.run(() => super._init());
  }

  @override
  String toString() {
    return '''
repositoryData: ${repositoryData}
    ''';
  }
}
