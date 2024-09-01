import 'package:flutter/material.dart';
import 'package:project/provider/example_oneProvider.dart';
import 'package:provider/provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);
  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  // double value = 1.0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneprovider>(context, listen: false);
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ExampleOneprovider>(
              builder: (context, value, child) {
                return Slider(
                    min: 0,
                    max: 1,
                    value: provider.value,
                    onChanged: (val) {
                      provider.setValue(val);
                    });
              },
            ),
            Consumer<ExampleOneprovider>(
              builder: (context, value, child) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.yellow.withOpacity(provider.value),
                        child: Center(child: Text("Conatiner 1")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.green.withOpacity(provider.value),
                        child: Center(child: Text("Conatiner 2")),
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
