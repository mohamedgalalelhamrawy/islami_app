 
import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/models/hadeth.dart';
import 'package:islami_app/screens/home/widgets/hadeth_details_screen.dart';
import 'package:islami_app/utils/app_styles.dart';

class ItemHadethName extends StatelessWidget {
  ItemHadethName({super.key,required this.hadeth});
   Hadethmodel hadeth ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,HadethDetailsScreen.routename,arguments: hadeth);
      },
      child: Text(hadeth.title,style: AppStyles.titles,textAlign: TextAlign.center,));
  }
}