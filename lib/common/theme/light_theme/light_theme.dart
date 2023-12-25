import'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';
import '../app_color_scheme.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: PayPlanColorScheme.lightBackground1,
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Nato Sans",
    textTheme: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font1Theme(context), context),
  );
}