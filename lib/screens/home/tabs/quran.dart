
import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/widgets/sura_name_item.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';
import 'package:islami_app/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Expanded(flex:4, child: Image.asset(AppAssets.quranLogo)),
            Expanded(
              flex:10,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                     children: [
                  dividorMethod(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.sura_name,
                          style: AppStyles.titles,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                         AppLocalizations.of(context)!.number_of_verses,
                          style: AppStyles.titles,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  dividorMethod(),
                  Expanded(
                    flex: 7,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return dividorMethod();
                      },
                      itemCount: Constants.suraNames.length,
                      itemBuilder: (context, index) {
                        return SuraNameItem(name:  Constants.suraNames[index], verses:Constants.suraverses[index],index: index,);
                      },
                    ),
                  )
                  ],),
                 const  VerticalDivider(thickness: 2,color: AppColors.primary)
                ],
              ),
            )

          ],
        ); 
  }

    Divider dividorMethod() => const Divider(
        thickness: 2,
        color: AppColors.primary,
      );
}