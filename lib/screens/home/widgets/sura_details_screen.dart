import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/home/models/sura_details_args.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class SuraDetailsScreen extends StatefulWidget {
   SuraDetailsScreen({super.key});
  static const String routeName = "sura details screen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
 List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
         if(verses.isEmpty){
        loadquranfile(args.index);
      }
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
           child: verses.isEmpty? Center(child: CircularProgressIndicator(color: AppColors.primary,)) : ListView.builder(
            itemCount: verses.length,
            itemBuilder: (context, index) {
              return Text("${verses[index]}(${index+1})",textDirection:TextDirection.rtl,style: TextStyle(fontSize: 18),);
            }, ),   
        ),
      ),
    );
  }

  void loadquranfile (int index) async{
      String content = await rootBundle.loadString("assets/files/${index+1}.txt");
      List <String> lines = content.split("\n");
      verses = lines ;
      setState(() {});
  }
}
