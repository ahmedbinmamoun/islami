import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';

class AppTheme {
   static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: AppColors.whiteColor,
       unselectedItemColor: AppColors.blackColor,
    ),
    textTheme: TextTheme(
      headlineLarge: AppStyle.bold16White,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.blackColor,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
      ),
    ),
   );
}