import 'package:dio/dio.dart';
import 'modules/getUsername/get_username_module.dart';
import 'shared/repositories/github_repository.dart';
import 'shared/repositories/interfaces/github_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:repositories_list/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<IGithubRepository>((i) => GithubRepository(
                Dio(BaseOptions(baseUrl: "https://api.github.com", headers: {
              "Accept": "application/vnd.github.v3+json",
            })))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: GetUsernameModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
