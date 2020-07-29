import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:repositories_list/app/shared/stores/user_data_store.dart';
import 'package:repositories_list/app/app_module.dart';

void main() {
  initModule(AppModule());
  // UserDataStore userdata;
  //
  setUp(() {
    //     userdata = AppModule.to.get<UserDataStore>();
  });

  group('UserDataStore Test', () {
    //   test("First Test", () {
    //     expect(userdata, isInstanceOf<UserDataStore>());
    //   });

    //   test("Set Value", () {
    //     expect(userdata.value, equals(0));
    //     userdata.increment();
    //     expect(userdata.value, equals(1));
    //   });
  });
}
