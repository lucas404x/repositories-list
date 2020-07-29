import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';
import 'package:repositories_list/app/shared/models/user_model.dart';
import 'package:repositories_list/app/shared/repositories/interfaces/github_repository_interface.dart';
import 'package:repositories_list/app/shared/stores/user_data_store.dart';
part 'get_username_controller.g.dart';

class GetUsernameController = _GetUsernameControllerBase
    with _$GetUsernameController;

abstract class _GetUsernameControllerBase with Store {
  IGithubRepository _githubRepository;
  UserDataStore _userDataStore = Modular.get<UserDataStore>();

  _GetUsernameControllerBase(this._githubRepository);

  searchUsername(GlobalKey<ScaffoldState> key, String username) async {
    if (username.isEmpty) {
      return key.currentState
          .showSnackBar(SnackBar(content: Text('The username is empty.')));
    }

    UserModel userInfo;

    try {
      userInfo = await _githubRepository.getUserInfo(username);
      this._userDataStore.setUserData(userInfo);
    } catch (e) {
      return key.currentState
          .showSnackBar(SnackBar(content: Text("Invalid user.")));
    }

    List<RepositoryModel> userRepositories =
        await _githubRepository.getUserRepos(username);

    Modular.to.pushNamed('/home', arguments: userRepositories);
  }
}
