import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/homeScreen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/1337247/pexels-photo-1337247.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
    );
  }
}
