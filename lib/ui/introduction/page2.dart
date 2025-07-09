import 'package:flutter/material.dart';
import 'package:islami/ui/introduction/widgets/seek_point_widget.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';

class Page2 extends StatelessWidget {
  static const String routeName = 'page2';
   Page2({super.key});

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
            
            Image.asset(AppAssets.maskWelcome),
            SizedBox(height: height * 0.06,),
            Text('Welcome To Islami App',style: AppStyle.bold24Primary,),
            SizedBox(height: height * 0.05,),
            Text('We Are Very Excited To Have You In Our Community',style: AppStyle.bold20Primary,textAlign: TextAlign.center,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back',style: AppStyle.bold16Primary,),
                Row(
                  children: [
                    
                    PointWidget(),
                    SeekWidget(),
                    PointWidget(),
                    PointWidget(),
                    PointWidget(),
                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, Page2.routeName);
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