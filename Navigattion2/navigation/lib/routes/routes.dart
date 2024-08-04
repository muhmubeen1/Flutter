import 'package:flutter/material.dart';
import 'package:navigation/home_screen.dart';
import 'package:navigation/screen_two.dart';
import 'package:navigation/utilities/routesNames.dart';

class Routes {
  static Route<dynamic> generatreRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case RouteName.screenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: setting.arguments as Map,
                ));
      default:
        throw Exception("No Page Found");
    }
  }
}
