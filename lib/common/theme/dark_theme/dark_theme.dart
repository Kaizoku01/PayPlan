import'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import '../app_text_theme.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: PayPlanColorScheme.darkBackground1,
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Nato Sans",
    textTheme: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font1Theme(context), context),
  );
}