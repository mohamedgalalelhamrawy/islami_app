import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/home.dart';
import 'package:islami_app/screens/home/widgets/hadeth_details_screen.dart';
import 'package:islami_app/screens/home/widgets/sura_details_screen.dart';
import 'package:islami_app/screens/splash.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("en"),
        title: 'Localizations Sample App',
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
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
