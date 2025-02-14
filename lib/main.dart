import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/home/home.dart';
import 'package:islami_app/screens/home/widgets/hadeth_details_screen.dart';
import 'package:islami_app/screens/home/widgets/sura_details_screen.dart';
import 'package:islami_app/screens/splash.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/utils/thems.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      theme: ThemeData.light() ,
      darkTheme: darkTheme ,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLanguge),
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
