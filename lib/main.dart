import 'package:flutter/material.dart';
import 'package:islami_app/screens/home.dart';
import 'package:islami_app/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Splash.routeName : (context) => const Splash(),
        HomeScreen.routeName : (context) => const HomeScreen()
      },
     initialRoute: HomeScreen.routeName, 
    );
  }
}