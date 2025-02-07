

import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  static String routeName = "splash";
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.backgroundImage))
      ),
    );
  }
}