import 'package:flutter/material.dart';
import 'package:pay_plan/common/provider/theme_provider.dart';
import 'package:pay_plan/common/theme/dark_theme/dark_theme.dart';
import 'package:pay_plan/common/theme/light_theme/light_theme.dart';
import 'package:pay_plan/screens/bottom_nav_bar_wrapper/bottom_nav_bar_wrapper.dart';
import 'package:pay_plan/screens/signup_screen/signup_screen.dart';
import 'package:provider/provider.dart';

import 'common/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeProvider>().isDarkModeEnabled
          ? darkTheme(context)
          : lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: context.watch<ThemeProvider>().isDarkModeEnabled
          ? ThemeMode.dark
          : ThemeMode.light,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: SignUpScreen.routeName,
    );
  }
}
