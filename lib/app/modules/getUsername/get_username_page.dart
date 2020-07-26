import 'package:flutter/material.dart';
import 'package:repositories_list/app/shared/constants/colors.dart';
import 'package:repositories_list/app/shared/widgets/button/button.dart';

class GetUsernamePage extends StatefulWidget {
  @override
  _GetUsernamePageState createState() => _GetUsernamePageState();
}

class _GetUsernamePageState extends State<GetUsernamePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
                  width: size.width * .5,
                  height: size.height * .06,
                  color: buttonColor,
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
