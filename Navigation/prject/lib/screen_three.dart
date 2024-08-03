import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);
  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.amberAccent,
                  child: Center(child: Text("Screen 3")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
