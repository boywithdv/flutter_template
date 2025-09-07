import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepOrange,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
  ),
  colorScheme: ColorScheme.light(
    // Primary color of the app.
    primary: Color(0xFF01896C),
    // Secondary color of the app.
    secondary: Color(0xFFF45479),
    onSecondary: Color(0xFFFFFFFF),
    // エラーカラー。
    error: Color(0xFFFF3131),
    // 背景色。
    surface: Color(0xFFFEFEFE),
    surfaceDim: Color(0x1F787880),
    surfaceTint: Color(0xFFF5F5F5),
    surfaceContainerLowest: Color(0xFFF7F7F7),
    surfaceContainerLow: Color(0xFFFAFBFC),
    surfaceContainerHighest: Color(0xFFFFFFFF),
    // 文字色。
    onSurface: Color(0xFF181A1F),
    onSurfaceVariant: Color(0xFF989898),
    // 枠線やディバイダーに使用されるカラー。
    outline: Color(0xFFDCDCDC),
    // 半透明の暗い色。主にモーダルダイアログやドロワーの背後に使用。
    scrim: Color(0x3416202A),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.black),
  ),
  primarySwatch: Colors.blue,
);
