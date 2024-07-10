import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('./images/logo.png'),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Maintenance",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xff2D3142)),
                        ),
                        Text(
                          "Box",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xffF9703B)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff2D3142)),
                  ),
                ),
                const SizedBox(height: 15),
                const Center(
                  child: Text(
                    "Loremm akhdi amaj siosn asonmasio \n sdanskianjasjhdb jaswua ajshdi ulasu iamlsoi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Rubik Regular',
                        color: Color(0Xff4C5980)),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        fontFamily: 'Rubik Medium',
                      ),
                      prefixIcon: const Icon(
                        Icons.alternate_email,
                        color: Color(0Xff4C5980),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        fontFamily: 'Rubik Medium',
                      ),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Color(0Xff4C5980),
                      ),
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 250, top: 10),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontFamily: 'Rubik Medium',
                      color: Color(
                        0Xff4C5980,
                      ),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xffF9703B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontFamily: 'Rubik Medium',
                        fontSize: 24,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account ? ",
                      style: TextStyle(
                        fontFamily: 'Rubik Medium',
                        fontSize: 16,
                        color: Color(0Xff4C5980),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sign Up ",
                      style: TextStyle(
                          fontFamily: 'Rubik Medium',
                          fontSize: 16,
                          color: Color(0xffF9703B)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
