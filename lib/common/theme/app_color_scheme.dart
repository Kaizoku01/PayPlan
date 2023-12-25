import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class PayPlanColorScheme {
  static Color get darkBackground1 => const Color(0xff000000);

  static Color get lightBackground1 => const Color(0xffffffff);

  static Color get darkFont1 => const Color(0xffffffff);

  static Color get lightFont1 => const Color(0xff000000);

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
}
