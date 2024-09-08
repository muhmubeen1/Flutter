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
    final themeToogle = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text("Light Theme"),
              value: ThemeMode.light,
              groupValue: themeToogle.themeMode,
              onChanged: themeToogle.toggleTheme),
          RadioListTile<ThemeMode>(
              title: Text("Dark Theme"),
              value: ThemeMode.dark,
              groupValue: themeToogle.themeMode,
              onChanged: themeToogle.toggleTheme),
          RadioListTile<ThemeMode>(
              title: Text("System Theme"),
              value: ThemeMode.system,
              groupValue: themeToogle.themeMode,
              onChanged: themeToogle.toggleTheme),
        ],
      ),
    );
  }
}
