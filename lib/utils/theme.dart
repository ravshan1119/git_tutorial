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
          fontFamily: "Montserrat"),
      displayMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: "Montserrat"),
      displaySmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat"),
      //headline
      headlineLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: "Montserrat"),
      headlineMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"),
      headlineSmall: TextStyle(
          color: AppColors.C_4CBB5E,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat"),

      //title
      titleLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Montserrat"),
      titleMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat"),
      titleSmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"),
      //label
      labelLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat"),
      labelMedium: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"),
      labelSmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"),
      //body
      bodySmall: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"),
      bodyMedium: TextStyle(
          color: AppColors.C_4B4B4B,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat"),
      bodyLarge: TextStyle(
          color: AppColors.C_194B38,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Montserrat"),
    ),
  );
}