import 'package:flutter/material.dart';
import '../../_core_exports.dart';
import '../../_package_exports.dart';

class AppTextStyles {
  static TextStyle headlineStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 24.0,
    color: AppColors.orangeColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle appBarTitleStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 18.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
  );
  static TextStyle subTitleStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 11.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
  );
  static TextStyle subTitleBoldStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 11.0,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bodyTitleStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 16.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyBoldTextStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 14.0,
    color: const Color(0xFF2E3142),
    fontWeight: FontWeight.w700,
  );

//!-------------
  static TextStyle bodyTextStyleWhite = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 18.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodySmallTextStyleBlack = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 14.0,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  static TextStyle menuContainerBigStyle = GoogleFonts.roboto(
    decoration: TextDecoration.none,
    fontSize: 30.0,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
