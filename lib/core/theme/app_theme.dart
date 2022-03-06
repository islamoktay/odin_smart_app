// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'app_colors/app_colors.dart';

enum AppTheme {
  PrimaryTheme,
}

final appThemeData = {
  AppTheme.PrimaryTheme: ThemeData(
    primaryColor: Colors.red,
    backgroundColor: Colors.blue,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  ),
};
