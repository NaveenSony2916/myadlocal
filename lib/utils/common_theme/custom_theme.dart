import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
    bodySmall: TextStyle(fontSize: 14, color: Colors.grey[600]),
    labelLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white70),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white70),
    bodySmall: TextStyle(fontSize: 14, color: Colors.grey[400]),
    labelLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);
