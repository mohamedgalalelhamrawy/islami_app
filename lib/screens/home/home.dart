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
              items: [
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
        body: Column(
          children: [
            Expanded(flex: 1, child: Image.asset(AppAssets.quranLogo)),
            dividorMethod(),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    "عدد الايات",
                    style: AppStyles.titles,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    "اسم السورة",
                    style: AppStyles.titles,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            dividorMethod(),
            Expanded(
                flex: 3,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return dividorMethod();
                  },
                  itemCount: 114,
                  itemBuilder: (context, index) {
                    return const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "عدد الايات",
                            style: AppStyles.titles,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "اسم السورة",
                            style: AppStyles.titles,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }

  Divider dividorMethod() => const Divider(
        thickness: 2,
        color: AppColors.primary,
      );
}
