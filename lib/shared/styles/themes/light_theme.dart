import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/shared/styles/app_colors.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: AppColors.primarySwatch,
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: AppColors.defaultTextColor2,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: AppColors.primaryColor,
    ),
    titleTextStyle: TextStyle(
      color: AppColors.defaultTextColor2,
      fontWeight: FontWeight.w700,
      fontSize: 26,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.primaryColor,
    unselectedItemColor: Colors.grey,
    elevation: 30,
    backgroundColor: AppColors.backgroundColor,
  ),
  textTheme: TextTheme(
    displayMedium: TextStyle(
      color: AppColors.defaultTextColor2,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
        color: Colors.grey,
        fontSize: 14
    ),
    displayLarge: TextStyle(
      color: Colors.black87,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  ),
);