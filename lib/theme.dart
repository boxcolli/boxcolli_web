import 'package:flutter/material.dart';

class FlutterTheme {
  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.black,
      ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.blueGrey,
      ),
    );
  }
}
