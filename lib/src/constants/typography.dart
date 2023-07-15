import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static const TextStyle _default = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static TextStyle displayLarge = _default.copyWith(
    fontSize: 57,
    letterSpacing: -0.25,
    height: 1.12,
  );
}
