
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/home/models/hadeth.dart';
import 'package:islami_app/screens/home/widgets/item_hadeth_name.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class Hadeth extends StatefulWidget {
    const Hadeth({super.key});

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<Hadethmodel> ahadeth = [];
    @override
    Widget build(BuildContext context) {
      if(ahadeth.isEmpty){
        loadHadethFile();
      }
      return Column(
        children: [
          Expanded( 
            flex: 4,
            child: Image.asset(AppAssets.hadethLogo)),
          dividorMethod(),
          Text("الاحاديث",style: AppStyles.titles,textAlign: TextAlign.center,),
          dividorMethod(), 
          Expanded(
            flex: 9,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return dividorMethod();
              },
              itemCount: ahadeth.length,
              itemBuilder: (context, index) {
                return ahadeth.isEmpty ?  Center(child: CircularProgressIndicator(color: AppColors.primary,)) : 
                 ItemHadethName(hadeth: ahadeth[index]);
              },),
          )
        ],
      );
    }

     Divider dividorMethod() => const Divider(
        thickness: 2,
        color: AppColors.primary,
      );

        void loadHadethFile() async{
            String ahadethcontent = await rootBundle.loadString("assets/files/ahadeth.txt");
            List<String> hadethList = ahadethcontent.split("#\r\n");
            for(int i =0;i<hadethList.length;i++){
              List<String> hadethLines = hadethList[i].split("\n");
              String title = hadethLines[0];
              hadethLines.removeAt(0);
              Hadethmodel hadeth = Hadethmodel(content: hadethLines, title: title);
              ahadeth.add(hadeth);
            }
           setState(() {});  
      }
}