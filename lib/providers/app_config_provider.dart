 

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

}