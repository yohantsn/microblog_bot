import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class TextBig extends StatelessWidget {
  final String text;

  TextBig({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w800,
        color: AppColorScheme.txtColorDark
      ),
    );
  }
}
