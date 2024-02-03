import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier {
  bool isDarkModeEnabled = false;

  void toggleTheme() {
      isDarkModeEnabled = !isDarkModeEnabled;
      notifyListeners();
  }
}
