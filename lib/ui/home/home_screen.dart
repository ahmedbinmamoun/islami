import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/ui/home/tabs/quran/quran_tab.dart';
import 'package:islami/ui/home/tabs/radio/radio_tab.dart';
import 'package:islami/ui/home/tabs/sebha/sebha_tab.dart';
import 'package:islami/ui/home/tabs/time/time_tab.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homesScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentBottomNavIndex = 0;
  List<String> backgroundImages = [
    AppAssets.quranBackground,
    AppAssets.hadethBackground,
    AppAssets.sebhaBackground,
    AppAssets.radioBackground,
    AppAssets.timeBackground,
  ];
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Image.asset(backgroundImages[currentBottomNavIndex],
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColors.primaryColor
            ),
            child: BottomNavigationBar(
              
              currentIndex: currentBottomNavIndex,
              onTap: (index) {
                currentBottomNavIndex = index;
                setState(() {
                  
                });
              },
              items: [
                BottomNavigationBarItem(icon: 
                bulitbottomNavigationBar(index: 0,imageName: AppAssets.iconQuran),label: 'quran'),
                BottomNavigationBarItem(icon: 
                bulitbottomNavigationBar(index: 1,imageName: AppAssets.iconHadeth),label: 'hadeth'),
                BottomNavigationBarItem(icon: 
                bulitbottomNavigationBar(index: 2,imageName: AppAssets.iconSebha),label: 'sebha'),
                BottomNavigationBarItem(icon: 
                bulitbottomNavigationBar(index: 3,imageName: AppAssets.iconRadio),label: 'radio'),
                BottomNavigationBarItem(icon: 
                bulitbottomNavigationBar(index: 4,imageName: AppAssets.iconTime),label: 'time'),
              ]
              ),
          ),
          
          body: Column(
            children: [
              Image.asset(AppAssets.logo),
              Expanded(child: tabs[currentBottomNavIndex]),
            ],
          ),
       
        ),
      ],
    );
  }
   Widget bulitbottomNavigationBar({required int index, required String imageName}){
    return currentBottomNavIndex == index ? 
       Container(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.blackBgColor,
                    borderRadius: BorderRadius.circular(66)),
                  child: ImageIcon(AssetImage(imageName))) :
                  ImageIcon(AssetImage(imageName));

   }
}