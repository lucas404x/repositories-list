import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/profile_button/profile_button.dart';
import '../../shared/widgets/repository_card/repository_card.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ProfileButton(
            userModel: this.controller.userData,
            size: size.width * .13,
          )
        ],
        backgroundColor: Colors.black,
        title: Text(this.controller.userData.login),
        centerTitle: true,
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            controller: this.controller.scroll$,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(25),
              child: RepositoryCard(
                  this.controller.observableRepositoryList[index]),
            ),
            itemCount: this.controller.observableRepositoryList.length,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    this.controller.scroll$.dispose();
    super.dispose();
  }
}
