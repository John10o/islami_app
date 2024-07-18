import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';

class MyThemeData {
  static final ThemeData lightmood = ThemeData(
      canvasColor: AppColors.primaryLightcolor,
      primaryColor: AppColors.primaryLightcolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.blackcolor,
        showUnselectedLabels: true,
        backgroundColor: AppColors.primaryLightcolor,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ));
}
