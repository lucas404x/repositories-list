import 'package:flutter/material.dart';

class InformationFieldWidget extends StatelessWidget {
  final String title;
  final String content;
  final TextStyle titleStyle;
  final TextStyle contentStyle;

  const InformationFieldWidget(
      {Key key,
      @required this.title,
      @required this.content,
      this.titleStyle,
      this.contentStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(this.title, style: this.titleStyle),
        const SizedBox(height: 10.0),
        Text(
          this.content,
          style: this.contentStyle,
        ),
      ],
    );
  }
}
