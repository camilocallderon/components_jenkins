import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.indigo; //Colors.blueGrey.shade900;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );
}
