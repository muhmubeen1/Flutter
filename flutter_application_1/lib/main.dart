import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.purple.shade400,
            appBar: AppBar(
              titleTextStyle: const TextStyle(color: Colors.white),
              backgroundColor: Colors.black,
              title: const Text("My First Flutter App",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      fontFamily: 'Pacifco')),
              leading: const Icon(Icons.menu),
            ),
            body: SafeArea(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 15,
                      width: 15,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.pinkAccent,
                      child: const Center(child: Text("First Container")),
                    ),
                    const SizedBox(
                      height: 15,
                      width: 15,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.orangeAccent,
                      child: const Center(child: Text("First Container")),
                    ),
                    const SizedBox(
                      height: 15,
                      width: 15,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.tealAccent,
                      child: const Center(child: Text("First Container")),
                    )
                  ]),
            ))));
  }
}
