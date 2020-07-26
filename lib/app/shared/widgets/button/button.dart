import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String name;
  final Color color;
  final TextStyle nameStyle;
  final Function onPressed;

  Button(
      {@required this.width,
      @required this.height,
      @required this.name,
      @required this.color,
      @required this.nameStyle,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(
            name,
            style: nameStyle,
          ),
        ),
        width: width,
        height: height,
      ),
    );
  }
}
