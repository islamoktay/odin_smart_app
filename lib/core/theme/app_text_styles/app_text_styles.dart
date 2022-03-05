import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_colors/app_colors.dart';

class AppTextStyles {
  static TextStyle headlineStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 24.0,
    color: AppColors.orangeColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle appBarTitleStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 18.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
  );
  static TextStyle subTitleStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 11.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
  );
  static TextStyle subTitleBoldStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 11.0,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bodyTitleStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 16.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyTextStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 14.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
  );
  static TextStyle bodyBoldTextStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 14.0,
    color: const Color(0xFF2E3142),
    fontWeight: FontWeight.w700,
  );

  static TextStyle myInformationBodyTextStyle = GoogleFonts.montserrat(
    decoration: TextDecoration.none,
    fontSize: 14.0,
    color: const Color(0xFF2E3142),
    fontWeight: FontWeight.w400,
  );
}
