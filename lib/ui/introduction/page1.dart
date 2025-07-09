import 'package:flutter/material.dart';
import 'package:islami/ui/introduction/page2.dart';
import 'package:islami/ui/introduction/widgets/seek_point_widget.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';

class Page1 extends StatelessWidget {
  static const String routeName = 'page1';
  const Page1({super.key});

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
            
            Image.asset(AppAssets.welcomeImage),
            SizedBox(height: height * 0.15,),
            Text('Welcome To Islami App',style: AppStyle.bold24Primary,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(''),
                Row(
                  children: [
                    
                    SeekWidget(),
                    PointWidget(),
                    PointWidget(),
                    PointWidget(),
                    PointWidget(),
                    

                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushReplacementNamed(context, Page2.routeName);
                  },
                  child: Text('Next',style: AppStyle.bold16Primary,))
              ],
            )
          ],
        ),
      ),
    );
  }
}