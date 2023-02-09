import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _lightColorScheme.primaryContainer,
    foregroundColor: _lightColorScheme.onPrimaryContainer,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.primary,
    foregroundColor: _lightColorScheme.onPrimary,
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _darkColorScheme.primary,
    foregroundColor: _darkColorScheme.onPrimary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _darkColorScheme.primary,
    foregroundColor: _darkColorScheme.onPrimary,
  ),
);
