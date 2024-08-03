import 'dart:core';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatefulWidget {
  // var name;
  // int age;
  ScreenTwo({
    Key? key,
  }) : super(key: key);
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Screen Two"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.amberAccent,
                  child: Center(child: Text("Screen 2")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
