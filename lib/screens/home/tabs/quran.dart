
import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';
import 'package:islami_app/utils/constants.dart';

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
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          "عدد الايات",
                          style: AppStyles.titles,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "اسم السورة",
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
                        return  Row(
                          children: [
                            Expanded(
                              child: Text(
                                Constants.suraverses[index].toString(),
                                style: AppStyles.titles,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                Constants.suraNames[index],
                                style: AppStyles.titles,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        );
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