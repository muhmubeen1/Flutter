import 'package:flutter/material.dart';
import 'package:project/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeChanger extends StatefulWidget {
  const ThemeChanger({Key? key}) : super(key: key);

  @override
  State<ThemeChanger> createState() => _ThemeChangerState();
}

class _ThemeChangerState extends State<ThemeChanger> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changer'),
      ),
      body: Column(
        children: [
          RadioListTile<AppThemeMode>(
            title: Text("Light Theme"),
            value: AppThemeMode.light,
            groupValue: themeProvider.themeMode,
            onChanged: (value) {
              themeProvider.setThemeMode(value!);
            },
          ),
          RadioListTile<AppThemeMode>(
            title: Text("Dark Theme"),
            value: AppThemeMode.dark,
            groupValue: themeProvider.themeMode,
            onChanged: (value) {
              themeProvider.setThemeMode(value!);
            },
          ),
          RadioListTile<AppThemeMode>(
            title: Text("Custom Blue Theme"),
            value: AppThemeMode.custom,
            groupValue: themeProvider.themeMode,
            onChanged: (value) {
              themeProvider.setThemeMode(value!);
            },
          ),
        ],
      ),
    );
  }
}
