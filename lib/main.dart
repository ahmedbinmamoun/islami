import 'package:flutter/material.dart';
import 'package:islami/providers/most_recent_provider.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/home/tabs/quran/detils/sura_detils_screen.dart';
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
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetilsScreen.routeName : (context) => SuraDetilsScreen(),
      },
    );
  }
}