import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../shared/constants/constants.dart' as consts;
import '../../shared/models/repository_model.dart';
import '../../shared/models/user_model.dart';
import '../../shared/repositories/interfaces/github_repository_interface.dart';
import '../../shared/stores/user_data_store.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final List<RepositoryModel> repositoriesList;
  final IGithubRepository _githubRepository;
  final UserDataStore _userDataStore;
  UserModel userData;
  int currentPage = 1;
  int maxPages;
  int maxRepositoriesPerPage = consts.maxRepositoriesPerPage;
  bool isLoading = false;

  ScrollController scroll$;

  _HomeControllerBase(
      this.repositoriesList, this._githubRepository, this._userDataStore) {
    this.addElementsToListOnScroll(this.repositoriesList);
    this.userData = this._userDataStore.userData;
    this.maxPages =
        (this.userData.publicRepos / this.maxRepositoriesPerPage).ceil();
    this.scroll$ = ScrollController();
    this.scroll$.addListener(() async {
      if (!this.isLoading &&
          this.scroll$.offset > this.scroll$.position.maxScrollExtent * 0.9) {
        if (this.currentPage < this.maxPages) {
          this.currentPage++;

          this.isLoading = true;
          List<RepositoryModel> auxList = await this
              ._githubRepository
              .getUserRepos(this.userData.login, this.currentPage);
          if (auxList != null) {
            this.addElementsToListOnScroll(auxList);
          }
          this.isLoading = false;
        }
      }
    });
  }

  @observable
  ObservableList<RepositoryModel> observableRepositoryList =
      <RepositoryModel>[].asObservable();

  @action
  void addElementsToListOnScroll(List<RepositoryModel> values) {
    this.observableRepositoryList.addAll(values);
  }
}
