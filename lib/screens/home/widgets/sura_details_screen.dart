import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/models/sura_details_args.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});
  static const String routeName = "sura details screen";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.backgroundImage))),
      child: Scaffold(
        backgroundColor: AppColors.transparentColor,
        appBar: AppBar(
          title: Text(
            args.name,
            style: AppStyles.appBarTextstyle,
          ),
          centerTitle: true,
          backgroundColor: AppColors.transparentColor,
        ),
        body: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              bottom: MediaQuery.of(context).size.width * 0.2),
          decoration: BoxDecoration(
              color: AppColors.whiteColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
