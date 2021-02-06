import 'package:flutter/material.dart';

class AppColorScheme{
  static final ColorScheme colorSchemeLight = ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: Color(0xffFFFFFF),
  );

  static final ColorScheme colorSchemeDark = ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: Color(0xff000000),
  );

  static const ColorPrincipal = Color(0xFFD6DF22);
  static const ColorLightPrincipal = Color(0xFFf0ef9c);
  static const ColorSecondary = Color(0xFF3B9CD6);
  static const ColorLightSecondary = Color(0xFFc7ddf2);
  static const ColorOrange = Color(0xffF5821F);
  static const ColorLightOrange = Color(0xffffd5b5);


  static const txtColorPrincipal = Color(0xff8DC53E);
  static const txtColorSecondary = Color(0xffF5821F);
  static const txtColorLight = Color(0xffe5e5e5);
  static const txtColorDark = Color(0xFF000000);
}