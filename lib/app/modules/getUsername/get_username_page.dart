import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants/colors.dart';
import '../../shared/widgets/button/button.dart';
import 'controller/get_username_controller.dart';

class GetUsernamePage extends StatefulWidget {
  @override
  _GetUsernamePageState createState() => _GetUsernamePageState();
}

class _GetUsernamePageState extends State<GetUsernamePage> {
  final getUsernameController = Modular.get<GetUsernameController>();
  final textEditingController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/github_icon.png',
                width: size.width * .5,
                height: size.height * .3,
              ),
              Padding(
                padding: EdgeInsets.only(top: size.width * .18),
                child: TextField(
                  controller: textEditingController,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Enter your username',
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Align(
                child: Button(
                  onPressed: () => getUsernameController.searchUsername(
                      scaffoldKey, textEditingController.text),
                  width: size.width * .5,
                  height: size.height * .06,
                  color: BUTTON_COLOR,
                  name: 'Search',
                  nameStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
