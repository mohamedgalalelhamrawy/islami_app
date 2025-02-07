
import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Expanded(flex: 1, child: Image.asset(AppAssets.quranLogo)),
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
                flex: 3,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return dividorMethod();
                  },
                  itemCount: 114,
                  itemBuilder: (context, index) {
                    return const Row(
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
                    );
                  },
                ))
          ],
        ); 
  }

    Divider dividorMethod() => const Divider(
        thickness: 2,
        color: AppColors.primary,
      );
}