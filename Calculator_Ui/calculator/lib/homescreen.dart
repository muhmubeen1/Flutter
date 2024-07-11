import 'package:calculator/components.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var result = "";
  var length = 0;
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          result.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MYButton(
                          title: "AC",
                          onpress: () {
                            userInput = "";
                            result = "";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "+/-",
                          onpress: () {
                            userInput += "+/-";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "%",
                          onpress: () {
                            userInput += "%";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "/",
                          color: Colors.deepOrange,
                          onpress: () {
                            userInput += "/";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "7",
                          onpress: () {
                            userInput += "7";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "8",
                          onpress: () {
                            userInput += "8";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "9",
                          onpress: () {
                            userInput += "9";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "x",
                          color: Colors.deepOrange,
                          onpress: () {
                            userInput += "*";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "4",
                          onpress: () {
                            userInput += "4";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "5",
                          onpress: () {
                            userInput += "5";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "6",
                          onpress: () {
                            userInput += "6";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "--",
                          color: Colors.deepOrange,
                          onpress: () {
                            userInput += "-";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "1",
                          onpress: () {
                            userInput += "1";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "2",
                          onpress: () {
                            userInput += "2";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "3",
                          onpress: () {
                            userInput += "3";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "+",
                          color: Colors.deepOrange,
                          onpress: () {
                            userInput += "+";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: "0",
                          onpress: () {
                            userInput += "0";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: ".",
                          onpress: () {
                            userInput += ".";
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "DEL",
                          onpress: () {
                            length = userInput.length;
                            userInput = userInput.substring(0, length - 1);
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: "=",
                          color: Colors.deepOrange,
                          onpress: () {
                            equalPressed();
                            setState(() {});
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

  void equalPressed() {
    Parser p = Parser();
    // user input is expression
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}
