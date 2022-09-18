import 'package:flutter/material.dart';
import 'package:core_mvc/app/app_colors.dart';
class AppThemeDataFactory{
  static ThemeData prepareThemeData()
  {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColor.primary,
      accentColor: AppColor.textPrimary,
      backgroundColor: AppColor.background
    );
  }
}