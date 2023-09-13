import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: "Inter",
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.white),
    colorScheme: const ColorScheme.light(
      primary: AppColors.mintGreen,
      
    ),
  );
}
