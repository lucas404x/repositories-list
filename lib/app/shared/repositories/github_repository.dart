import 'package:dio/native_imp.dart';
import 'interfaces/github_repository_interface.dart';

class GithubRepository implements IGithubRepository {
  final DioForNative client;

  GithubRepository(this.client);

  @override
  Future getRepositoryInfo(String userName, String repositoryName) {
    throw UnimplementedError();
  }

  @override
  Future getUserInfo(String userName) {
    throw UnimplementedError();
  }

  @override
  Future getUserRepos(String userName) {
    throw UnimplementedError();
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
