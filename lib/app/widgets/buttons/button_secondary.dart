import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class ButtonSecondary extends StatelessWidget {
  final String text;
  final Function onPressed;

  ButtonSecondary({@required this.text, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      height: MediaQuery.of(context).size.height * .15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            colors: [AppColorScheme.ColorPrincipal,  AppColorScheme.ColorSecondary],
            begin: const FractionalOffset(0.2, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            tileMode: TileMode.clamp
        ),
      ),
      child: RaisedButton(
        child: Text(
          text
        ),
        onPressed: onPressed,
      ),
    );
  }
}
