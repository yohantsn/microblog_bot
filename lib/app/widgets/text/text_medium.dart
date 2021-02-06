import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class TextMedium extends StatelessWidget {
  final String text;

  TextMedium({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.txtColorSecondary
      ),
    );
  }
}
