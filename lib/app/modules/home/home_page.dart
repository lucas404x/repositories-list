import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';
import 'package:repositories_list/app/shared/models/user_model.dart';
import 'package:repositories_list/app/shared/widgets/profile_button/profile_button.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final Map data;
  HomePage(this.data);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    UserModel userModel = widget.data["info"];
    List<RepositoryModel> repositories = widget.data["repositories"];
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ProfileButton(
            userModel: userModel,
            size: size.width * .13,
          )
        ],
        backgroundColor: Colors.black,
        title: Text(userModel.login),
        centerTitle: true,
      ),
      body: Column(),
    );
  }
}
