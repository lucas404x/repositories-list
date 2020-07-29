import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/repositories/interfaces/github_repository_interface.dart';
import 'controller/get_username_controller.dart';
import 'get_username_page.dart';

class GetUsernameModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GetUsernameController(Modular.get<IGithubRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => GetUsernamePage(),
        )
      ];
}
