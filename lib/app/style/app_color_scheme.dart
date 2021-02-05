import 'package:flutter/material.dart';

class AppColorScheme{
  static final ColorScheme colorSchemeLight = ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: Color(0xffF8FFED),
  );

  static final ColorScheme colorSchemeDark = ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: Color(0xffF8FFED),
  );

  static const ColorPrincipal = Color(0xFFD6DF22);
  static const ColorSecondary = Color(0xFF3B9CD6);
  static const ColorOrange = Color(0xffF5821F);


  static const txtColorPrincipal = Color(0xff8DC53E);
  static const txtColorSecondary = Color(0xffF5821F);
  static const txtColorLight = Color(0xffe5e5e5);
  static const txtColorDark = Color(0xFF000000);
}