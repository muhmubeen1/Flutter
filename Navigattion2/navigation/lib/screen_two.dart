import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({Key? key, required this.data}) : super(key: key);
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(widget.data["JVM"]),
          ),
          body: SafeArea(
              child: Center(
                  child: Container(
            color: Colors.amberAccent,
            height: 50,
            width: 100,
            child: Center(
              child: Text("Click Here"),
            ),
          )))),
    );
  }
}
