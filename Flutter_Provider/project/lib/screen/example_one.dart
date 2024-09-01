import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);
  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slider(
                min: 0,
                max: 1,
                value: value,
                onChanged: (val) {
                  value = val;
                  setState(() {});
                }),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.yellow.withOpacity(value),
                    child: Center(child: Text("Conatiner 1")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(value),
                    child: Center(child: Text("Conatiner 2")),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
