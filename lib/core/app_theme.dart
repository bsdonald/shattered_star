import 'package:flutter/material.dart';

const ink = Color(0xFF1C2928);
const parchment = Color(0xFFF2EBDD);
const moss = Color(0xFF53786C);
const ember = Color(0xFFC9754D);

ThemeData buildAppTheme() => ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: ink,
  colorScheme: ColorScheme.fromSeed(
    seedColor: moss,
    brightness: Brightness.dark,
  ),
  fontFamily: 'Georgia',
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF2B3835),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
  ),
);
