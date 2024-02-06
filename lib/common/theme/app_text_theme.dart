import 'package:flutter/material.dart';

abstract class PayPlanTextTheme {

  static TextTheme appTextTheme(Color textColor, BuildContext context) {
    return TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      bodyLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      displayMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      displaySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

    );
  }

}