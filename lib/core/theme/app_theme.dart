// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'app_colors/app_colors.dart';

enum AppTheme {
  PrimaryTheme,
}

final appThemeData = {
  AppTheme.PrimaryTheme: ThemeData(
    primaryColor: AppColors.primaryColor,
    backgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.appBarColor),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  ),
};
