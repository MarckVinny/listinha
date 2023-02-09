import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: lightColorScheme.primaryContainer,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: lightColorScheme.primary,
    foregroundColor: Colors.white,
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: darkColorScheme.primary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: darkColorScheme.primary,
    foregroundColor: Colors.white,
  ),
);
