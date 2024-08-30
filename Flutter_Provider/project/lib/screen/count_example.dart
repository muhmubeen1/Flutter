import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);
  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    // TODO: implement initState
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 0), (timer) {
      countProvider.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("build");
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(child: Consumer<CountProvider>(
            builder: (context, value, child) {
              return Text(
                value.count.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countProvider.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
