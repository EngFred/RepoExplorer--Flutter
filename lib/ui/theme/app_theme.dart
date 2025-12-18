import 'package:flutter/material.dart';

final githubDarkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF0D1117),
  cardColor: const Color(0xFF161B22),
  primaryColor: const Color(0xFF58A6FF),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF58A6FF),
    secondary: Color(0xFF238636),
    error: Color(0xFFDA3633),
    surface: Color(0xFF161B22),
    onSurface: Color(0xFFC9D1D9),
    onPrimary: Colors.white,
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Color(0xFF58A6FF),
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(color: Color(0xFFC9D1D9)),
    bodySmall: TextStyle(color: Colors.grey),
    labelMedium: TextStyle(color: Colors.grey),
  ),
  iconTheme: const IconThemeData(color: Colors.grey),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0D1117),
    foregroundColor: Colors.white,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF238636),
    foregroundColor: Colors.white,
  ),
  buttonTheme: const ButtonThemeData(buttonColor: Color(0xFF21262D)),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF30363D)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF58A6FF)),
    ),
    fillColor: Color(0xFF0D1117),
    filled: true,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFF0D1117),
    indicatorColor: const Color(0xFF1F6FEB),
    labelTextStyle: WidgetStateProperty.all(
      const TextStyle(color: Colors.grey),
    ),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(color: Colors.white);
      }
      return const IconThemeData(color: Colors.grey);
    }),
  ),
);
