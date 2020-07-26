import 'package:flutter/material.dart';

class GetUsernamePage extends StatefulWidget {
  @override
  _GetUsernamePageState createState() => _GetUsernamePageState();
}

class _GetUsernamePageState extends State<GetUsernamePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/github_icon.png',
            width: 300,
          )
        ],
      ),
    );
  }
}
