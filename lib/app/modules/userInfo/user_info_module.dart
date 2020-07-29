import 'package:flutter_modular/flutter_modular.dart';

import 'user_info_page.dart';

class UserInfoModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(
          '/',
          child: (context, args) => UserInfoPage(args.data),
        )
      ];
}
