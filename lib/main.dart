import 'package:flutter/material.dart';
import 'package:islami/providers/most_recent_provider.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/home/tabs/quran/detils/sura_detils_screen.dart';
import 'package:islami/ui/introduction/intro_screen.dart';
import 'package:islami/ui/introduction/page1.dart';
import 'package:islami/ui/introduction/page2.dart';
import 'package:islami/ui/introduction/page3.dart';
import 'package:islami/ui/introduction/page4.dart';
import 'package:islami/ui/introduction/page5.dart';
import 'package:islami/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main (){
  runApp(ChangeNotifierProvider(
    create: (context) => MostRecentProvider(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: IntroScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetilsScreen.routeName : (context) => SuraDetilsScreen(),
        IntroScreen.routeName : (context) => IntroScreen(),
        Page1.routeName : (context) => Page1(),
        Page2.routeName : (context) => Page2(),
        Page3.routeName : (context) => Page3(),
        Page4.routeName : (context) => Page4(),
        Page5.routeName : (context) => Page5(),
      },
    );
  }
}