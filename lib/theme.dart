import 'package:flutter/material.dart';

class FlutterTheme {
  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.grey,
        secondary: Colors.cyan,
        background: Colors.grey,
      ),
    );
  }
}
