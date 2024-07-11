import 'package:calculator/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        MYButton(
                          title: "AC",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "+/-",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "%",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "/",
                          color: Colors.deepOrange,
                          onpress: () {
                            print("tab");
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "7",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "8",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "9",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "x",
                          color: Colors.deepOrange,
                          onpress: () {
                            print("tab");
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "4",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "5",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "6",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "--",
                          color: Colors.deepOrange,
                          onpress: () {
                            print("tab");
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "1",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "2",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "3",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "+",
                          color: Colors.deepOrange,
                          onpress: () {
                            print("tab");
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "0",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: ".",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "DEL",
                          onpress: () {
                            print("tab");
                          },
                        ),
                        MYButton(
                          title: "=",
                          color: Colors.deepOrange,
                          onpress: () {
                            print("tab");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
