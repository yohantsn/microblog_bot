import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class BackButton extends StatelessWidget {
  final Function onPressed;

  BackButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_outlined,
          color: AppColorScheme.ColorPrincipal,
          size: 70,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
