// TODO(md-weber): Add a theme to our application
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
  primaryColor: const Color(0xFFBC114E),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: ThemeData.light().colorScheme.secondary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: const Color(0xFFF4338E),
      minimumSize: const Size.fromHeight(55),
    ),
  ),
);
