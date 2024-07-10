import 'package:flutter/material.dart';
import 'package:project/home_screen.dart';
import 'package:project/screen_two.dart';
import 'package:project/third_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ScreenTwo.id: (context) => const ScreenTwo(),
        ScreenThree.id: (context) => const ScreenThree(),
      },
    ),
  );
}
