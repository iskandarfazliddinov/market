import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

ThemeData lightMode = ThemeData(
  fontFamily: "MainFont",
  textTheme: TextTheme(
    bodyLarge: AppStyles.getStyleMain(),
  ),
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.white,
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.white
  ),
);

ThemeData darkMode = ThemeData(
  textTheme: TextTheme(
    bodyLarge: AppStyles.getStyleMain(color: AppColors.white),
  ),
  fontFamily: "MainFont",
  drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.backgroundColorDark
  ),
  brightness: Brightness.dark,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.backgroundColorDark,
);