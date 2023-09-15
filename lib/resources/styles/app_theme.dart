import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: "Inter",

    /// App Bar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light, // IOS
        statusBarColor: AppColors.white, // Andriod
        statusBarIconBrightness: Brightness.dark, // Android
      ),
    ),

    /// Colors Scheme
    colorScheme: const ColorScheme.light(
      primary: AppColors.mintGreen,
      onPrimaryContainer: Colors.white,
    ),

    /// Card Theme
    cardTheme: const CardTheme(color: AppColors.white),
  );
}
