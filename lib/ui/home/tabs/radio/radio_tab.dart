import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width:width * 0.9 ,
            // height: height * 0.04,
            margin: EdgeInsets.only(top: height * 0.02),
            color: AppColors.blackBgColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Container(
                    width: width * 0.4,
                    height: height * 0.04,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Radio',textAlign: TextAlign.center,
                    style: AppStyle.bold16Black,),
                  ),
                  Container(
                    width: width * 0.4,
                    height: height * 0.04,
                    decoration: BoxDecoration(
                      color: AppColors.blackBgColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Reciters',textAlign: TextAlign.center,
                    style: AppStyle.bold16White,),
                  ),
                  
              ],
            ),
          ),
          SizedBox(height: height * 0.02 ,),
        
          Container(
            width: width * 0.9,
            height: height * 0.15,
            padding: EdgeInsets.only(top: height * 0.01),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage(AppAssets.masqedHadeth),fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Text('Radio Ibrahim Al-Akdar',textAlign: TextAlign.center,
                style: AppStyle.bold20Black,),
                SizedBox(height: height * 0.015,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: width * 0.15,),
                    Icon(Icons.play_arrow,size: width * 0.15,),
                    Icon(Icons.multitrack_audio_sharp,size: width * 0.1,)
                  ],
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}