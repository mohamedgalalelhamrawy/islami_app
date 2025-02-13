  

  import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/models/hadeth.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class HadethDetailsScreen extends StatelessWidget {
    const HadethDetailsScreen({super.key});
    static const routename = "hadeth details screen";
    @override
    Widget build(BuildContext context) {
      var args = ModalRoute.of(context)?.settings.arguments as Hadethmodel;
      return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.backgroundImage))),
      child: Scaffold(
        backgroundColor: AppColors.transparentColor,
        appBar: AppBar(
          title: Text( 
              args.title
            ,
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
           child: ListView.builder(
            itemCount: args.content.length,
            itemBuilder: (context, index) {
              return Text(args.content[index],textDirection:TextDirection.rtl,style: TextStyle(fontSize: 18),);
            }, )
        ),
      ),
    );
    }
  }