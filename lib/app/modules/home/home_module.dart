import 'package:repositories_list/app/modules/home/home_controller.dart';
import 'package:repositories_list/app/shared/repositories/interfaces/github_repository_interface.dart';
import 'package:repositories_list/app/shared/widgets/repository_card/repository_card_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RepositoryCardController()),
        Bind((i) =>
            HomeController(i.args.data, Modular.get<IGithubRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
