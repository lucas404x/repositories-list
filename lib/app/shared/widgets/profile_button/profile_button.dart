import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/shared/models/user_model.dart';

class ProfileButton extends StatelessWidget {
  final UserModel userModel;
  final double size;

  ProfileButton({@required this.userModel, @required this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed('/home/user', arguments: userModel),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(userModel.avatarUrl), fit: BoxFit.cover)),
      ),
    );
  }
}
