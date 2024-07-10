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
  int x = 14;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the const keyword here
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              x.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {});
            // setstate enitirely rebuild the widget and show the changes on screem
            print(x);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
