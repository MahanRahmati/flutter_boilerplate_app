import 'package:app_constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData _default = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.blue,
  );

  static ThemeData get lightTheme {
    return _default.copyWith(
      brightness: Brightness.light,
    );
  }

  static ThemeData get darkTheme {
    return _default.copyWith(
      brightness: Brightness.dark,
    );
  }
}
