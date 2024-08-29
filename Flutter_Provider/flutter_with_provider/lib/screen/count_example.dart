import "package:flutter/material.dart";
import "package:flutter_with_provider/provider/count_provider.dart";
import "package:provider/provider.dart";

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);
  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);
    return ChangeNotifierProvider(
        create: (_) => CountProvider(),
        child: MaterialApp(
            home: Scaffold(
          body: SafeArea(
            child: Center(
              child: Text(
                countProvider.count.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              countProvider.setCount();
            },
            child: Icon(Icons.add),
          ),
        )));
  }
}
