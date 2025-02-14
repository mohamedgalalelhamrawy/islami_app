 
 import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class BottomSheetTheme extends StatelessWidget {
   const BottomSheetTheme({super.key});
 
   @override
   Widget build(BuildContext context) {
     var provider = Provider.of<AppConfigProvider>(context);
     return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  SizedBox(
            height: 40,
          ),
          InkWell(onTap: () {
            provider.changetheme(ThemeMode.light);
          }, child: provider.appTheme == ThemeMode.light ? selectedItemWidget(context, AppLocalizations.of(context)!.light) 
          :unSelectedItemWidget(context, AppLocalizations.of(context)!.light)
          ),
         const  SizedBox(
            height: 40,
          ),
          InkWell(onTap: () {
            provider.changetheme(ThemeMode.dark);
          }, child: provider.appTheme == ThemeMode.dark ? selectedItemWidget(context, AppLocalizations.of(context)!.dark) 
          :unSelectedItemWidget(context, AppLocalizations.of(context)!.dark))
        ],
      ),
    );
   }

    Widget unSelectedItemWidget(BuildContext context,String text) {
    return Text(
      text ,
      style: AppStyles.titles,
    );
  }

  Widget selectedItemWidget(BuildContext context,String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyles.titles.copyWith(color: AppColors.primary),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: AppColors.primary,
        )
      ],
    );
  }
 }