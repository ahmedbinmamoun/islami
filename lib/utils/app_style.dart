import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/utils/app_colors.dart';

class AppStyle {
  static  TextStyle bold14White = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: AppColors.whiteColor,
   );

   static  TextStyle bold16White = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.whiteColor,
   );
   static  TextStyle bold20White = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.whiteColor,
   );

   static  TextStyle bold14Black = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: AppColors.blackColor,
   );
   static  TextStyle bold24Black = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.blackColor,
   );
}