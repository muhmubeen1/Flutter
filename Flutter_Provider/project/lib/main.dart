import 'package:flutter/material.dart';
import 'package:project/provider/dark_theme_provider.dart';
import 'package:project/screen/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeProvider = Provider.of<DarkThemeProvider>(context);

          // Check the current theme mode from the provider
          ThemeData selectedTheme;
          switch (themeProvider.themeMode) {
            case AppThemeMode.light:
              selectedTheme = ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.orange,
                appBarTheme: AppBarTheme(color: Colors.orangeAccent),
              );
              break;
            case AppThemeMode.dark:
              selectedTheme = ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blueGrey,
                appBarTheme: AppBarTheme(color: Colors.blueGrey),
              );
              break;
            case AppThemeMode.custom:
              selectedTheme = ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: Colors.blue[50],
                appBarTheme: AppBarTheme(color: Colors.blueAccent),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.blueAccent,
                ),
              );
              break;
          }

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: selectedTheme, // Apply the selected theme based on provider
            home: ThemeChanger(),
          );
        },
      ),
    );
  }
}
