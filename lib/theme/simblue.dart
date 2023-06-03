import 'package:flutter/material.dart';

import '../shared/colors.dart';

class SimblueThemeData {
  static ThemeData lightThemeData = themeData();

  static ThemeData themeData() {
    final base = ThemeData.light();
    return base.copyWith(
      primaryColor: Palette.primary400,
      scaffoldBackgroundColor: Palette.gray50,
      textTheme: _buildSimblueTextTheme(base.textTheme)
          .apply(fontFamily: 'SpoqaHanSansNeo'),
      colorScheme: _buildSimblueColorTheme(base.colorScheme),
    );
  }

  static TextTheme _buildSimblueTextTheme(TextTheme base) {
    return base.copyWith(
      headlineLarge: const TextStyle(
          fontSize: 32, fontWeight: FontWeight.w500),
      headlineMedium: const TextStyle(
          fontSize: 28, fontWeight: FontWeight.w500),
      headlineSmall: const TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500),
      labelLarge: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500),
      labelMedium: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500),
      labelSmall: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500),
      bodyLarge: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400),
      bodyMedium: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400),
      bodySmall: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400),
    );
  }

  static ColorScheme _buildSimblueColorTheme(ColorScheme base) {
    return base.copyWith(
      primary: Palette.primary400,
      error: Palette.red500,
      brightness: Brightness.light,
      background: Palette.gray50,
    );
  }
}
