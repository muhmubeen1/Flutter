import 'package:flutter/material.dart';
import 'package:project/provider/count_provider.dart';
import 'package:project/provider/dark_theme_provider.dart';
import 'package:project/provider/example_oneProvider.dart';
import 'package:project/provider/favourite_provider.dart';
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
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneprovider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeProvider = Provider.of<DarkThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(color: Colors.yellow),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.teal,
            appBarTheme: AppBarTheme(color: Colors.teal),
          ),
          home: ThemeChanger(),
        );
      }),
    );
  }
}
