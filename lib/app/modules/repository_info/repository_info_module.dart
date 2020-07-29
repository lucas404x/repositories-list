import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/repositories/interfaces/github_repository_interface.dart';
import '../../shared/stores/user_data_store.dart';
import 'repository_info_controller.dart';
import 'repository_info_page.dart';

class RepositoryInfoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RepositoryInfoController(
              Modular.get<IGithubRepository>(),
              i.args.data,
              Modular.get<UserDataStore>(),
            )),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RepositoryInfoPage()),
      ];

  static Inject get to => Inject<RepositoryInfoModule>.of();
}
