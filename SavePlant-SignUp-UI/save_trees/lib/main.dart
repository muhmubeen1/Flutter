import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/icon.png'),
                        height: 85,
                        width: 85,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Save Tree's",
                        style: TextStyle(
                            fontFamily: 'PTSans-Bold',
                            fontSize: 24,
                            color: Color(0xff000000)),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontFamily: 'PTSans-Bold', fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Tree's are our lives \n We Should save them which save us.",
                    style:
                        TextStyle(fontFamily: 'PTSans-Regular', fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: const Icon(Icons.person),
                        fillColor: const Color(0xffc0c0c0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0XffE4E7EB)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Contact no.",
                        prefixIcon: const Icon(Icons.call_end),
                        fillColor: const Color(0xffc0c0c0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0XffE4E7EB)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: const Icon(Icons.email_rounded),
                        fillColor: const Color(0xffc0c0c0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0XffE4E7EB)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.password_outlined),
                        suffixIcon: const Icon(Icons.visibility_off),
                        fillColor: const Color(0xffc0c0c0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0XffE4E7EB)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: 'PTSans-Bold',
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontFamily: 'PTSans-Regular', fontSize: 14),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontFamily: 'PTSans-Bold',
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
