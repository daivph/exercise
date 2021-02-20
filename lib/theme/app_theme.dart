import 'package:flutter/material.dart';

class AppTheme {
  static dark() {
    return ThemeData(
      appBarTheme: AppBarTheme(brightness: Brightness.dark, color: Colors.pink),
      scaffoldBackgroundColor: Colors.black,
      brightness: Brightness.dark,
    );
  }

  static light() {
    return ThemeData(
      appBarTheme:
          AppBarTheme(brightness: Brightness.light, color: Colors.blue),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
