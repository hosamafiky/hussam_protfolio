import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(primary: AppColors.primary, surface: AppColors.darkBackground, onSurface: AppColors.gray[100]!),
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.gray[900]),
  );
}
