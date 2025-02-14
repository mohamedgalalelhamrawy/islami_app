 import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';

 final  ThemeData darkTheme =  ThemeData(
    primaryColor: AppColors.primaryDark,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.whiteColor),
),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
 ) 
);