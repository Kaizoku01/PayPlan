import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';


class PayPlanColorScheme {
  static Color get darkBackground1 =>
      const Color.fromRGBO(15, 19, 25, 1); //Value rgba(15, 19, 26, 1)


  static Color get lightBackground1 =>
      const Color(0xffffffff);


  static Color get darkFont1 => const Color.fromRGBO(
      255, 255, 255, 1); //background: rgba(255, 255, 255, 1);



  static Color get lightFont1 =>
      const Color.fromRGBO(29, 36, 51, 1); //rgba(29, 36, 51, 1)


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
