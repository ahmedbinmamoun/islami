import 'package:flutter/material.dart';
import 'package:islami/ui/introduction/page1.dart';
import 'package:islami/ui/introduction/page2.dart';
import 'package:islami/ui/introduction/page3.dart';
import 'package:islami/ui/introduction/page4.dart';
import 'package:islami/ui/introduction/page5.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = 'intro_screen';
   IntroScreen({super.key});
  static final controller = PageController();

  List<Widget> pagesList = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
    
   ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          SizedBox(height: height * 0.01,),
          Image.asset(AppAssets.logo),
              SizedBox(height: height * 0.08),
          Expanded(
            child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: pagesList.length,
              
              itemBuilder: (context, index) {
              
              return pagesList[index];
            },),
          ),
         
        ],
      ),
    );
  }
}