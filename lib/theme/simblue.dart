import 'package:flutter/material.dart';

import '../shared/colors.dart';

class SimblueThemeData {
  static ThemeData lightThemeData = themeData();

  static ThemeData themeData() {
    final base = ThemeData.light();
    return base.copyWith(
      primaryColor: Palette.primary400,
      textTheme: _buildSimblueTextTheme(base.textTheme)
          .apply(fontFamily: 'SpoqaHanSansNeo'),
      colorScheme: _buildSimblueColorTheme(base.colorScheme),
      // ...
      // textTheme 외에도 appBarTheme, primaryTheme, colorScheme 등 override 할 수 있는 항목 매우 많음
    );
  }

  static TextTheme _buildSimblueTextTheme(TextTheme base) {
    return base.copyWith(
      headlineLarge: const TextStyle(
          fontSize: 32, fontWeight: FontWeight.w500, height: 52),
      headlineMedium: const TextStyle(
          fontSize: 28, fontWeight: FontWeight.w500, height: 36),
      headlineSmall: const TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500, height: 32),
      labelLarge: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, height: 24),
      labelMedium: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, height: 20),
      labelSmall: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, height: 16),
      bodyLarge: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, height: 28),
      bodyMedium: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, height: 24),
      bodySmall: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, height: 20),
    );
  }

  static ColorScheme _buildSimblueColorTheme(ColorScheme base) {
    return base.copyWith(
      primary: Palette.primary400,
      error: Palette.red500,
      brightness: Brightness.light,
    );
  }
}
