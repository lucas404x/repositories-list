import 'package:mobx/mobx.dart';
import 'package:repositories_list/app/shared/models/user_model.dart';
part 'user_info_controller.g.dart';

class UserInfoController = _UserInfoControllerBase with _$UserInfoController;

abstract class _UserInfoControllerBase with Store {
  UserModel _userModel;
  UserModel get userModel => _userModel;

  _UserInfoControllerBase(this._userModel);
}
