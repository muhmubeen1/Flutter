import 'package:flutter/material.dart';
import 'package:navigation/utilities/routesNames.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("HomeScreen"),
          ),
          body: SafeArea(
              child: Center(
                  child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteName.screenTwo, arguments: {
                "JVM": "Java 8",
                "Version": "1.8",
              });
            },
            child: Container(
              color: Colors.amberAccent,
              height: 50,
              width: 100,
              child: Center(
                child: Text("Click Here"),
              ),
            ),
          )))),
    );
  }
}
