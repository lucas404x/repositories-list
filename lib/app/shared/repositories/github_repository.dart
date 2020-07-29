import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';
import 'package:repositories_list/app/shared/models/user_model.dart';
import 'interfaces/github_repository_interface.dart';

class GithubRepository implements IGithubRepository {
  final DioForNative client;

  GithubRepository(this.client);

  @override
  Future<RepositoryModel> getRepositoryInfo(
      String username, String repositoryName) async {
    try {
      Response response =
          await this.client.get("/repos/$username/$repositoryName");
      if (response.statusCode == 200) {
        return RepositoryModel.fromMap(response.data);
      } else {
        return null;
      }
    } on DioError catch (e) {
      throw e.message;
    }
  }

  @override
  Future<UserModel> getUserInfo(String username) async {
    try {
      Response response = await this.client.get("/users/$username");
      if (response.statusCode == 200) {
        return UserModel.fromMap(response.data);
      } else {
        return null;
      }
    } on DioError catch (e) {
      throw e.message;
    }
  }

  @override
  Future<List<RepositoryModel>> getUserRepos(String username,
      [int page]) async {
    page ??= 1;
    try {
      Response response =
          await this.client.get("/users/$username/repos?page=$page");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((repositoryJson) => RepositoryModel.fromMap(repositoryJson))
            .toList();
      } else {
        return null;
      }
    } on DioError catch (e) {
      throw e.message;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
