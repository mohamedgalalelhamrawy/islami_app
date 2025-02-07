

import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/home.dart';
import 'package:islami_app/utils/app_assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  static String routeName = "splash";

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {

  @override
void initState() {
  super.initState();
  Future.delayed(Duration(seconds: 2),() {
    Navigator.pushNamed(context, HomeScreen.routeName);
  },);
}
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.backgroundImage))
      ),
    );
  }
}