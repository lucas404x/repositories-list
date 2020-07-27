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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: FadeInImage(
            height: size,
            width: size,
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/images/github_icon.png'),
            image: NetworkImage(userModel.avatarUrl)),
      ),
    );
  }
}
