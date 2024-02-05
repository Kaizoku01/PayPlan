import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class PayPlanColorScheme {
  static Color get darkBackground1 => const Color(0xff000000);

  static Color get lightBackground1 => const Color(0xffffffff);

  static Color get darkFont1 => const Color(0xffffffff);

  static Color get lightFont1 => const Color(0xff000000);

  static Color get lightIncomeColor => const Color(0xffC7F4A5);

  static Color get lightExpenseColor => const Color(0xffFBB1C3);

  static Color get lightPrimaryColor1 => const Color(0xff4D5083);

  static Color get lightPrimaryColor2 => const Color(0xffB6BBFE);

  static Color get darkIncomeColor => const Color(0xff92E752);

  static Color get darkExpenseColor => const Color(0xffFF2E61);

  static Color get darkPrimaryColor2 => const Color(0xff7A83FF);

  static Color get darkPrimaryColor1 => const Color(0xff108d68);

  static Color bg1Theme(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkBackground1;
    } else {
      return lightBackground1;
    }
  }

  static Color font1Theme(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkFont1;
    } else {
      return lightFont1;
    }
  }

  static Color font2Theme(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return lightFont1 ;
    } else {
      return darkFont1;
    }
  }

  static Color icon1Theme(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkFont1;
    } else {
      return lightPrimaryColor1;
    }
  }

  static Color icon2Theme(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkBackground1;
    } else {
      return lightPrimaryColor1;
    }
  }

  static Color icon3Theme({required BuildContext context, required bool isIncome}) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkBackground1;
    } else {
      return isIncome ? lightIncomeColor : lightExpenseColor;
    }
  }

  static Color wealthCardTheme(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkPrimaryColor1;
    } else {
      return lightPrimaryColor1;
    }
  }

  static Color chartBarsTheme1(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkIncomeColor;
    } else {
      return lightIncomeColor;
    }
  }

  static Color chartBarsTheme2(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkExpenseColor;
    } else {
      return lightExpenseColor;
    }
  }

  static Color chartBarsTheme3(BuildContext context) {
    final isDarkModeEnabled = context.watch<ThemeProvider>().isDarkModeEnabled;

    if (isDarkModeEnabled) {
      return darkPrimaryColor2;
    } else {
      return lightPrimaryColor2;
    }
  }
}
