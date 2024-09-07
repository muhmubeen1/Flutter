import 'package:flutter/material.dart';
import 'package:project/favourite/favourite_screen.dart';
import 'package:project/provider/count_provider.dart';
import 'package:project/provider/example_oneProvider.dart';
import 'package:project/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneprovider()),
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: FavouriteScreen(),
        ));
  }
}
