// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserDataStore on _UserDataStoreBase, Store {
  final _$userDataAtom = Atom(name: '_UserDataStoreBase.userData');

  @override
  UserModel get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(UserModel value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  final _$_UserDataStoreBaseActionController =
      ActionController(name: '_UserDataStoreBase');

  @override
  void setUserData(UserModel value) {
    final _$actionInfo = _$_UserDataStoreBaseActionController.startAction(
        name: '_UserDataStoreBase.setUserData');
    try {
      return super.setUserData(value);
    } finally {
      _$_UserDataStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userData: ${userData}
    ''';
  }
}
