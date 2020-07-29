import 'package:flutter/material.dart';
import 'package:repositories_list/app/shared/models/user_model.dart';
import 'package:repositories_list/app/shared/widgets/information_field/information_field_widget.dart';
import 'package:repositories_list/app/shared/widgets/profile_button/profile_button.dart';
import 'package:repositories_list/app/shared/widgets/separator/separator_widget.dart';

class UserInfoPage extends StatefulWidget {
  final UserModel _userModel;

  UserInfoPage(this._userModel);

  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  Map _userInfo;
  List _keys;

  @override
  void initState() {
    _userInfo = widget._userModel.toMap();

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
        title: Text(widget._userModel.login),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: size.width * .06, top: size.width * .05),
            child: ProfileButton(
                userModel: widget._userModel, size: size.width * .5),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView.separated(
                itemBuilder: (_, index) => InformationFieldWidget(
                    title: _keys[index],
                    content: _userInfo[_keys[index]].toString()),
                separatorBuilder: (_, __) => SeparatorWidget(),
                itemCount: _keys.length),
          ))
        ],
      ),
    );
  }
}
