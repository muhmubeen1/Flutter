import 'package:flutter/material.dart';
import 'package:project/screen_two.dart';
import 'package:project/third_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: Icon(Icons.person),
              ),
              accountName: Text("Stella"),
              accountEmail: Text("stella@gmail.com")),
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              }),
          ListTile(
              leading: const Icon(Icons.screen_lock_landscape),
              title: const Text("Screen Three"),
              onTap: () {
                Navigator.pushNamed(context, ScreenThree.id);
              }),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Log out"),
              onTap: () {
                Navigator.pushNamed(context, ScreenThree.id);
              }),
        ],
      )),
      appBar: AppBar(
          title: const Center(child: Text("Home Screen")),
          backgroundColor: Colors.teal),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Suscribe krein")],
      ),
    );
  }
}
