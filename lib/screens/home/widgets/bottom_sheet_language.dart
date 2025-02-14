import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';
import 'package:provider/provider.dart';

class BottomSheetLanguage extends StatelessWidget {
  const BottomSheetLanguage({super.key});

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
            provider.changeLanguage("ar");
          }, child: provider.appLanguge == "ar" ? selectedItemWidget(context, AppLocalizations.of(context)!.arabic) 
          :unSelectedItemWidget(context, AppLocalizations.of(context)!.arabic)
          ),
         const  SizedBox(
            height: 40,
          ),
          InkWell(onTap: () {
            provider.changeLanguage("en");
          }, child: provider.appLanguge == "en" ? selectedItemWidget(context, AppLocalizations.of(context)!.english) 
          :unSelectedItemWidget(context, AppLocalizations.of(context)!.english))
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
