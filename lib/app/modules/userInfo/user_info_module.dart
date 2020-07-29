import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/modules/userInfo/user_info_controller.dart';
import 'package:repositories_list/app/shared/stores/user_data_store.dart';

import 'user_info_page.dart';

class UserInfoModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [Bind((i) => UserInfoController(i.get<UserDataStore>().userData))];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => UserInfoPage(),
        )
      ];
}
