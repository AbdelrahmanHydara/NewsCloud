import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/shared/styles/app_colors.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch: AppColors.primarySwatch,
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: Color(0xfff122222),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Color(0xfff122222),
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 26,
    ),
    iconTheme: IconThemeData(
      color: AppColors.backgroundColor,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.backgroundColor,
    unselectedItemColor: Colors.grey,
    elevation: 30,
    backgroundColor: Color(0xfff122222),
  ),
  textTheme: TextTheme(
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
        color: Colors.grey,
        fontSize: 14
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  ),
);