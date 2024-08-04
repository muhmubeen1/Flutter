import 'package:flutter/material.dart';
import 'package:prject/home_screen.dart';
import 'package:prject/screen_three.dart';
import 'package:prject/screen_two.dart';
import 'package:prject/utils/routes_names.dart';

class Routes {
  static Route<dynamic> routeGenerate(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.secondScreen:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: setting.arguments as Map,
                ));
      case RoutesName.thirdScreen:
        return MaterialPageRoute(builder: (context) => ScreenThree());

      default:
        throw Exception("NO ROUTES");
    }
  }
}
