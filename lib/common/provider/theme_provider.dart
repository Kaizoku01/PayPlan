import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier {
  bool isDarkModeEnabled = false;

  void toggleTheme(bool themeMode) {
    if(isDarkModeEnabled != themeMode) {
      isDarkModeEnabled = themeMode;
      notifyListeners();
    }
  }
}
