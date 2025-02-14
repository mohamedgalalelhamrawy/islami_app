import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/home/tabs/hadeth.dart';
import 'package:islami_app/screens/home/tabs/quran.dart';
import 'package:islami_app/screens/home/tabs/radio.dart';
import 'package:islami_app/screens/home/tabs/sebha.dart';
import 'package:islami_app/screens/home/tabs/settings.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [Quran(), Hadeth(), RadioTab(), Sebha(),Settings()];
  static int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: provider.appTheme == ThemeMode.light ? AssetImage(AppAssets.backgroundImage)
          :AssetImage(AppAssets.darkBackgroundImage)
          )
          ),
      child: Scaffold(
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: provider.appTheme == ThemeMode.light ? AppColors.primary : AppColors.primaryDark),
          child: BottomNavigationBar(
              selectedIconTheme: IconThemeData(size: 36),
              unselectedIconTheme: IconThemeData(size: 32),
              currentIndex: selectedIndex,
              selectedLabelStyle: AppStyles.iconlabel,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              items:  [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconQuran)),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconHadeth)),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconRadio)),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppAssets.iconSebha)),
                    label: AppLocalizations.of(context)!.sebha),
                 BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings)    
              ]),
        ),
        backgroundColor: AppColors.transparentColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.transparentColor,
          title:  Text(
            AppLocalizations.of(context)!.app_title,
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
