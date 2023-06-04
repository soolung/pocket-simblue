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
      headlineLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Palette.monoBlack),
      headlineMedium: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Palette.monoBlack),
      headlineSmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Palette.monoBlack),
      labelLarge: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Palette.monoBlack),
      labelMedium: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Palette.monoBlack),
      labelSmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Palette.monoBlack),
      bodyLarge: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Palette.monoBlack),
      bodyMedium: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Palette.monoBlack),
      bodySmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Palette.monoBlack),
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
