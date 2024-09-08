import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme(ThemeMode? mode) {
    if (mode != null) {
      _themeMode = mode;
      notifyListeners(); // Notify listeners to rebuild the UI
    }
  }
}
