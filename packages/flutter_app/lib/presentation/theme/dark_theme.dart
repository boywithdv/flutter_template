import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  colorScheme: ColorScheme.dark(
    surface: Color(0xFF262E3D),
    primary: Color(0xFF37B6E9),
    secondary: Color(0xFF8BF8C4),
    onSurface: Colors.white,
    onPrimary: Colors.white,
    scrim: Colors.black,
    outline: Colors.grey[700]!,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.white),
  ),
  primarySwatch: Colors.deepPurple,
);
