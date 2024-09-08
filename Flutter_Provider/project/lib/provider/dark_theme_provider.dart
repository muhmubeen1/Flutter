import 'package:flutter/material.dart';

// Define a custom enum to represent the theme modes
enum AppThemeMode { light, dark, custom }

class DarkThemeProvider with ChangeNotifier {
  AppThemeMode _themeMode = AppThemeMode.light; // Default to light theme

  // Getter for current theme mode
  AppThemeMode get themeMode => _themeMode;

  // Method to switch between the themes
  void setThemeMode(AppThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
