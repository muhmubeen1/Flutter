import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = "ScreenTwo";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Screen TWO"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Icon(
                            Icons.person,
                          )),
                      title: Text("Stella"),
                      subtitle: Text("How can i help sir?"),
                      trailing: Text("3:30PM"),
                    );
                  },
                ),
              )
            ]),
      ),
    );
  }
}
