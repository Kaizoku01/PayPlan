import 'package:flutter/material.dart';

abstract class PayPlanTextTheme {

  static TextTheme appTextTheme(Color textColor, BuildContext context) {
    return TextTheme(

      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),

      labelSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
    );
  }

}

// //Label medium
// labelMedium: TextStyle(
//   fontSize: 12 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
// //Display large text
// displayLarge: TextStyle(
//   fontSize: 57 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
//
// //Display medium text
// displayMedium: TextStyle(
//   fontSize: 45 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
//
// //Display small text
// displaySmall: TextStyle(
//   fontSize: 36 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),

// //Headline large
// headlineLarge: TextStyle(
//   fontSize: 32 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
//
// //Headline medium
// headlineMedium: TextStyle(
//   fontSize: 28 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
//
// //Headline small
// headlineSmall: TextStyle(
//   fontSize: 24 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),

// //Title large
// titleLarge: TextStyle(
//   fontSize: 22,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
//
// //Title medium
// titleMedium: TextStyle(
//   fontSize: 16 ,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),
//
// //Title small
// titleSmall: TextStyle(
//   fontSize: 14,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),

// //Body large
// bodyLarge: TextStyle(
//   fontSize: 16 * fontSize,
//   fontWeight: FontWeight.normal,
//   color: textColor,
// ),