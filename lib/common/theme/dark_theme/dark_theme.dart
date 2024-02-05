import'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import '../app_text_theme.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: PayPlanColorScheme.darkBackground1,
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Nato Sans",
      appBarTheme: AppBarTheme(color: PayPlanColorScheme.darkBackground1, elevation: 0),
    textTheme: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font1Theme(context), context),
  );
}