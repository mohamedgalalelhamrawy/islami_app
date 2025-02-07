import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/tabs/hadeth.dart';
import 'package:islami_app/screens/home/tabs/quran.dart';
import 'package:islami_app/screens/home/tabs/radio.dart';
import 'package:islami_app/screens/home/tabs/sebha.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [Quran(), Hadeth(), RadioTab(), Sebha()];
  static int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.backgroundImage))),
      child: Scaffold(
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: AppColors.primary),
          child: BottomNavigationBar(
              selectedIconTheme: IconThemeData(size: 36),
              unselectedIconTheme: IconThemeData(size: 32),
              selectedItemColor: AppColors.accent,
              currentIndex: selectedIndex,
              selectedLabelStyle: AppStyles.iconlabel,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconQuran)),
                    label: "Quran"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconHadeth)),
                    label: "Hadeth"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconRadio)),
                    label: "Radio"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconSebha)),
                    label: "Sebha")
              ]),
        ),
        backgroundColor: AppColors.transparentColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.transparentColor,
          title: const Text(
            "اسلامي",
            style: AppStyles.appBarTextstyle,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.zero,
          child: tabs[selectedIndex],
        )
      ),
    );
  }


}
