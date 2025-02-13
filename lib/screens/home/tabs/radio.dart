
 import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_styles.dart';

class RadioTab extends StatelessWidget {
    const RadioTab({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width*0.13,),
          Image.asset(AppAssets.radiologo),
         SizedBox(height: MediaQuery.of(context).size.width*0.13,),
           Text("اذاعة القران الكريم",style: AppStyles.titles),
            SizedBox(height: MediaQuery.of(context).size.width*0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: AppColors.primary,
                icon: Icon(Icons.skip_previous,size: 30,),
                onPressed: (){},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: IconButton(
                  color: AppColors.primary,
                  icon: Icon(Icons.play_arrow,size: 50,),
                  onPressed: (){},
                ),
              ),
              IconButton(
                color: AppColors.primary,
                icon: Icon(Icons.skip_next,size: 30,),
                onPressed:  (){},
              ),
            ],
          ),   
        ],
      );
    }
  }