import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/information_field/information_field_widget.dart';
import '../../shared/widgets/profile_button/profile_button.dart';
import '../../shared/widgets/separator/separator_widget.dart';
import 'user_info_controller.dart';

class UserInfoPage extends StatefulWidget {
  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState
    extends ModularState<UserInfoPage, UserInfoController> {
  Map _userInfo;
  List _keys;

  @override
  void initState() {
    _userInfo = this.controller.userModel.toMap();

    // remove unnecessary information
    _userInfo.remove('avatar_url');

    _keys = _userInfo.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(this.controller.userModel.login),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: size.width * .06, top: size.width * .05),
            child: ProfileButton(
                userModel: this.controller.userModel, size: size.width * .5),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView.separated(
                itemBuilder: (_, index) => InformationFieldWidget(
                    title: _keys[index],
                    content: _userInfo[_keys[index]]?.toString() ??
                        "No info provided."),
                separatorBuilder: (_, __) => SeparatorWidget(),
                itemCount: _keys.length),
          ))
        ],
      ),
    );
  }
}
