 
 import 'package:flutter/material.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/utils/app_styles.dart';
class BottomSheetLanguage extends StatelessWidget {
   const BottomSheetLanguage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Text(AppLocalizations.of(context)!.arabic,style: AppStyles.titles,),
          SizedBox(height: 40,),
          Text(AppLocalizations.of(context)!.english,style: AppStyles.titles,)
        ],
       ),
     );
   }
 }