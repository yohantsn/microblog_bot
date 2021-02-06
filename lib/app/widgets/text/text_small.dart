import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class TextSmall extends StatelessWidget {
  final String text;

  TextSmall({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w200,
        color: AppColorScheme.txtColorDark
      ),
    );
  }
}
