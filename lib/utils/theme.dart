import 'package:flutter/material.dart';

import 'app_colors.dart';

class TxtTheme{
  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      //display
      displayLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
      displayMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      displaySmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      //headline
      headlineLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      headlineMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      headlineSmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),

      //title
      titleLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      titleMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      titleSmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      //label
      labelLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      labelMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      labelSmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      //body
      bodySmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
    ),
  );
}