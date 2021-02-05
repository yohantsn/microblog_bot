import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class TextHeaderPost extends StatelessWidget {
  final String text;

  TextHeaderPost({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: Text(
          text,
          style: TextStyle(
              color: AppColorScheme.txtColorSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.justify,
        ));
  }
}
