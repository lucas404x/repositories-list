import 'package:flutter_modular/flutter_modular.dart';

abstract class IGithubRepository implements Disposable {
  Future getUserInfo(String username);
  Future getUserRepos(String username);
  Future getRepositoryInfo(String userName, String repositoryname);
}
