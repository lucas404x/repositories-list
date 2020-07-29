import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class ProfileButton extends StatelessWidget {
  final UserModel userModel;
  final double size;
  final Function onTap;

  ProfileButton({@required this.userModel, @required this.size, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
