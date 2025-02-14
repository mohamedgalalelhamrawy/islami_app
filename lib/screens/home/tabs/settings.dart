 
 import 'package:flutter/material.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/screens/home/widgets/bottom_sheet_language.dart';
import 'package:islami_app/screens/home/widgets/bottom_sheet_theme.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class Settings extends StatelessWidget {
   const Settings({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.width*0.1,),
        InkWell(
          onTap: () {
            showModalBottomSheet(context: context, builder:(context) {
              return BottomSheetLanguage();
            }, );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            padding: EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 10),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.language,style: AppStyles.titles,),
                Icon(Icons.arrow_drop_down,size: 30,)
              ],
            ),
          ),
        ),
       InkWell(
        onTap: () {
            showModalBottomSheet(context: context, builder:(context) {
              return BottomSheetTheme();
            }, );
          },
         child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            padding: EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 10),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.theme,style: AppStyles.titles,),
                Icon(Icons.arrow_drop_down,size: 30,)
              ],
            ),
          ),
       ) 
      ],
     );
   }
 }