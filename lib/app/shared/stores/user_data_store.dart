import 'package:mobx/mobx.dart';

import '../models/user_model.dart';

part 'user_data_store.g.dart';

class UserDataStore = _UserDataStoreBase with _$UserDataStore;

abstract class _UserDataStoreBase with Store {
  @observable
  UserModel userData;

  @action
  void setUserData(UserModel value) {
    this.userData = value;
  }
}
