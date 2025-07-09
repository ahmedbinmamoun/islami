import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/introduction/widgets/seek_point_widget.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';

class Page5 extends StatelessWidget {
  static const String routeName = 'page5';
   Page5({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.02,
        ),
        child: Column(
          children: [
            
            Image.asset(AppAssets.radioMic),
            SizedBox(height: height * 0.06,),
            Text('Holy Quran Radio',style: AppStyle.bold24Primary,),
            SizedBox(height: height * 0.05,),
            Text('You can listen to the Holy Quran Radio through the application for free and easily',style: AppStyle.bold20Primary,textAlign: TextAlign.center,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back',style: AppStyle.bold16Primary,),
                Row(
                  children: [
                    
                    PointWidget(),
                    PointWidget(),
                    PointWidget(),
                    PointWidget(),
                    SeekWidget(),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                  },
                  child: Text('Finish',style: AppStyle.bold16Primary,))
              ],
            )
          ],
        ),
      ),
    );
  }
}