import 'package:flutter/material.dart';
import 'package:prject/utils/routes_names.dart';

class HomeScreen extends StatefulWidget {
  // final String name;
  // final int num;
  HomeScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text("HomeScreen"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.secondScreen,
                      arguments: {'Node': 'JVM', 'Dev': ' App Development'});
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.amberAccent,
                  child: Center(child: Text("Screen 1")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
