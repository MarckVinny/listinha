part of '../app_widget.dart';

//*todo: aqui estamos trabalhando com a serialização dos dados e isso é bom
//*todo: deixa o código mais rápido.
//final lightTheme = ThemeData(
//*todo: para facilitar o hot reload a variável será convertida
//*todo: para um getter.
ThemeData get lightTheme => ThemeData(
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
      segmentedButtonTheme: _segmentedButtonTheme,
      //   textTheme: TextTheme(
      //     titleLarge: TextStyle(
      //       color: _lightColorScheme.primary,
      //     ),
      //     titleMedium: TextStyle(
      //       color: _lightColorScheme.primary,
      //     ),
      //   ),
    );

ThemeData get darkTheme => ThemeData(
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
      segmentedButtonTheme: _segmentedButtonTheme,
    );

SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(
                fontSize: 8,
              );
            }
            return const TextStyle(
              fontSize: 11,
            );
          },
        ),
      ),
    );
