
import 'package:flutter/material.dart';

class UiConfig {
  
  UiConfig._();

  static String get title => 'CuidaPet';

  static ThemeData get theme => ThemeData(
    primaryColor: Color(0xffa8ce4b),
    primaryColorDark: Color(0xff689f38),
    primaryColorLight: Color(0xffdde9c7),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffa8ce4b),
      foregroundColor: Colors.white,
    ),
  );


}