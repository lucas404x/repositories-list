import 'package:mobx/mobx.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';
import 'package:repositories_list/app/shared/repositories/interfaces/github_repository_interface.dart';
import 'package:repositories_list/app/shared/stores/user_data_store.dart';
import 'package:url_launcher/url_launcher.dart';

part 'repository_info_controller.g.dart';

class RepositoryInfoController = _RepositoryInfoControllerBase
    with _$RepositoryInfoController;

abstract class _RepositoryInfoControllerBase with Store {
  final IGithubRepository _githubRepository;
  final RepositoryModel _repositoryModel;
  final UserDataStore _userDataStore;

  @observable
  RepositoryModel repositoryData;

  _RepositoryInfoControllerBase(
      this._githubRepository, this._repositoryModel, this._userDataStore) {
    this._init();
  }

  @action
  _init() async {
    try {
      this.repositoryData = await this._githubRepository.getRepositoryInfo(
          this._userDataStore.userData.login, this._repositoryModel.name);
    } catch (e) {}
  }

  void openUrl(String gitRepoLink) async {
    String url = _convertToUrl(gitRepoLink);
    if (await canLaunch(url)) {
      launch(url);
    }
  }

  String _convertToUrl(String gitRepoLink) =>
      "https" + gitRepoLink.substring(3);
}
