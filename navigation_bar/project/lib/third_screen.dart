import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String id = "ScreenThree";
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Screen Three")),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Center(child: Text("Screen Three")))
          ],
        ),
      ),
    );
  }
}
