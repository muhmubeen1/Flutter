// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var random = Random();
  var intValue = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Lottery App")),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text(" Lottery spining number is 4")),
            const SizedBox(height: 20),
            Container(
              height: 250,
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.card_giftcard,
                            size: 24,
                            color: Colors.yellow,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Congratulations!! Your number is $x",
                            style: const TextStyle(fontSize: 14),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            size: 24,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Better Luck next time Try Again!! Your number is $x",
                            style: const TextStyle(fontSize: 14),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = intValue.nextInt(6);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
