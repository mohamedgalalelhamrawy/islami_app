import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/home.dart';
import 'package:islami_app/screens/home/widgets/hadeth_details_screen.dart';
import 'package:islami_app/screens/home/widgets/sura_details_screen.dart';
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
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetailsScreen.routeName : (context) =>  SuraDetailsScreen(),
        HadethDetailsScreen.routename : (context) => HadethDetailsScreen(),
      },
     initialRoute: HomeScreen.routeName, 
    );
  }
}