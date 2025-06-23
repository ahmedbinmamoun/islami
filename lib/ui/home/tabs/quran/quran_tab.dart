import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/quran/sura_item.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02,),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Image.asset(AppAssets.bookIcon),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2,
                ),
                ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2,
                ),
                ),
            
              hintText: 'Sura Name',
              hintStyle: AppStyle.bold16White,
              
            ),
            cursorColor: AppColors.primaryColor,
            style: AppStyle.bold16White,
          
            
          ),
          SizedBox(height: height * 0.02,),
          Text('Most Recently',
          style: AppStyle.bold16White,
          ),
          SizedBox(height: height * 0.01,),
          SizedBox(
            height: height * 0.18,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text('Al-Anbiya',
                        style: AppStyle.bold24Black,),
                        Text('الانبياء',
                        style: AppStyle.bold24Black,),
                        Text('112 Verses',
                        style: AppStyle.bold14Black,),
                      ],),
                      
                      Image.asset(AppAssets.mostRecent),
                    ],
                    
                  ),
                  
                );
              },
               separatorBuilder: (context, index) {
                 return SizedBox(width: width * 0.02,);
               }, 
               itemCount: 10),
          ),
          SizedBox(height: height * 0.01,),
          Text('Suras List',
          style: AppStyle.bold16White,),
          SizedBox(height: height * 0.01,),
          Expanded(
            
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
              return SuraItem();
            },
             separatorBuilder: (context, index) {
               return Divider(
                thickness: 1,
                indent: width * 0.1,
                endIndent: width * 0.1,
               );
             },
              itemCount: 14),
          )
        ],
      ),
    );
  }
}