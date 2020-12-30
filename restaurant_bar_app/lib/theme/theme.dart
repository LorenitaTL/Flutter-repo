import 'package:flutter/material.dart';

final ThemeData CompanyThemeData = new ThemeData(
  fontFamily: 'NanumGothic',
    brightness: Brightness.light,
    primaryColor: CompanyColors.yellow1[700],
    accentColor: CompanyColors.yellow1[900],
    focusColor: CompanyColors.yellow1[900],
    cursorColor: CompanyColors.yellow1[900],
    primaryColorBrightness: Brightness.light,
    accentColorBrightness: Brightness.light);


class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> yellow1 = const <int, Color>{
    
    50: const Color(0xffffe9c7),
    100: const Color(0xffffe2b5),
    200: const Color(0xffffdda8),
    300: const Color(0xffffd89c),
    400: const Color(0xffffd18c),
    500: const Color(0xffffc670),
    600: const Color(0xffffc163),
    700: const Color(0xffffbd59),
    800: const Color(0xffffac2e),
    900: const Color(0xffffae00),
    /*50: const Color.fromRGBO(255, 189, 89, 0.1),
    100: const Color.fromRGBO(255, 189, 89, 0.2),
    200: const Color.fromRGBO(255, 189, 89, 0.3),
    300: const Color.fromRGBO(255, 189, 89, 0.4),
    400: const Color.fromRGBO(255, 189, 89, 0.5),
    500: const Color.fromRGBO(255, 189, 89, 0.6),
    600: const Color.fromRGBO(255, 189, 89, 0.7),
    700: const Color.fromRGBO(255, 189, 89, 0.8),
    800: const Color.fromRGBO(255, 189, 89, 0.9),
    900: const Color.fromRGBO(255, 189, 89, 1),*/
  };
}