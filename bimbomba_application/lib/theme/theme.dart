import 'package:flutter/material.dart';

final ThemeData CompanyThemeData = new ThemeData(
    fontFamily: 'NanumGothic',
    brightness: Brightness.light,
    primaryColor: CompanyColors.blue[400],
    accentColor: CompanyColors.yellow[500],
    focusColor: CompanyColors.yellow[500],
    cursorColor: CompanyColors.yellow[500],
    primaryColorBrightness: Brightness.light,
    accentColorBrightness: Brightness.light);

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> blue = const <int, Color>{
    //#009fc7
    //#68d0ed
    25: const Color(0xffa0e2f3),
    50: const Color(0xff97dff2),
    100: const Color(0xff8ddcf1),
    200: const Color(0xff82d8f0),
    300: const Color(0xff76d4ef),
    400: const Color(0xff68d0ed),//Color principal
    500: const Color(0xff5fbdd7),
    600: const Color(0xff56acc3),
    700: const Color(0xff4e9cb1),
    800: const Color(0xff478ea1),
    900: const Color(0xff418192),
  };

  static const Map<int, Color> orange = const <int, Color>{
    //#fe8100
    //#f16726
    50: const Color(0xfff9a749),
    100: const Color(0xfff89e37),
    200: const Color(0xfff79423),
    300: const Color(0xfff47e25),
    400: const Color(0xfff16726),//Color principal
    500: const Color(0xffdb5e23),
    600: const Color(0xffc75520),
    700: const Color(0xffb54d1d),
    800: const Color(0xffad4a1c),
    900: const Color(0xffa5461a),
  };
  static const Map<int, Color> yellow = const <int, Color>{
    //#ffbe00
    //#fcc222
    100: const Color(0xffd0a01c),
    200: const Color(0xffe5b01f),
    300: const Color(0xfffcc222),
    400: const Color(0xfffdc120),
    500: const Color(0xfffebf1d),
  };
}
