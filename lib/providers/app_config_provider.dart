 

    import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{

  String appLanguge = "en" ;

  void changeLanguage(String userLanguage){
      if(appLanguge == userLanguage){
        return ;
      }
      appLanguge = userLanguage;
      notifyListeners();
  }
  //  (2)theme provider

    ThemeMode appTheme = ThemeMode.light;
  void changetheme (ThemeMode userTheme){
    if(appTheme == userTheme){
      return ;
    }
    appTheme = userTheme ;
    notifyListeners();
  }

}