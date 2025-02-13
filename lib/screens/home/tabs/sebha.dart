
 import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class Sebha extends StatefulWidget {
    const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
   int tasbee7count = 0;
      String tasbee7 = "سبحان الله";
    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(AppAssets.sebhaLogo),
            SizedBox(height: MediaQuery.of(context).size.width*0.1,),
            Text("عدد التسبيحات",style: AppStyles.titles),
             SizedBox(height: MediaQuery.of(context).size.width*0.07,),
            ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18), // Change the radius here
            ),
              backgroundColor: Color(0xffC8B396),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20), 
            ),
             child: Text(tasbee7count.toString(),style: AppStyles.titles)),
              SizedBox(height: MediaQuery.of(context).size.width*0.04,),
            InkWell(
              onTap: () {
                tasbee7count ++;
                if(tasbee7count == 33 && tasbee7 == "سبحان الله"){
                  tasbee7count = 0;
                  tasbee7 = "الحمد لله";
                }if(tasbee7count == 33 && tasbee7 == "الحمد لله" ){
                  tasbee7count = 0;
                  tasbee7 ="الله اكبر";
                }if(tasbee7count == 33 && tasbee7 == "الله اكبر" ){
                   tasbee7count = 0;
                  tasbee7 ="سبحان الله";
                }
              setState(() {});
              // print(tasbee7count);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.primary,
                ),
                child: Text(tasbee7,style: AppStyles.titles.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.w800),),
              ),
            ) 
          ],
        ),
      );
    }
}