import 'package:flutter_modular/flutter_modular.dart';

import 'repository_info_controller.dart';
import 'repository_info_page.dart';

class RepositoryInfoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RepositoryInfoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => RepositoryInfoPage(
                  repository: args.data,
                )),
      ];

  static Inject get to => Inject<RepositoryInfoModule>.of();
}
