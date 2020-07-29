import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/modules/userInfo/user_info_module.dart';

import 'app_widget.dart';
import 'modules/getUsername/get_username_module.dart';
import 'modules/home/home_module.dart';
import 'modules/repository_info/repository_info_module.dart';
import 'shared/repositories/github_repository.dart';
import 'shared/repositories/interfaces/github_repository_interface.dart';
import 'shared/stores/user_data_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DioForNative(
              BaseOptions(baseUrl: "https://api.github.com", headers: {
                "Accept": "application/vnd.github.v3+json",
              }),
            )),
        Bind<IGithubRepository>((i) => GithubRepository(i.get())),
        Bind((i) => UserDataStore()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: GetUsernameModule()),
        Router('/home', module: HomeModule()),
        Router('/repository', module: RepositoryInfoModule()),
        Router('/user', module: UserInfoModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
