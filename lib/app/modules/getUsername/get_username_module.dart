import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/modules/getUsername/controller/get_username_controller.dart';
import 'package:repositories_list/app/modules/getUsername/get_username_page.dart';

class GetUsernameModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GetUsernameController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => GetUsernamePage(),
        )
      ];
}
