import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/modules/getUsername/controller/get_username_controller.dart';
import 'package:repositories_list/app/modules/getUsername/get_username_page.dart';
import 'package:repositories_list/app/shared/repositories/github_repository.dart';

class GetUsernameModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GetUsernameController(GithubRepository(
                Dio(BaseOptions(baseUrl: "https://api.github.com", headers: {
              "Accept": "application/vnd.github.v3+json",
            })))))
      ];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => GetUsernamePage(),
        )
      ];
}
