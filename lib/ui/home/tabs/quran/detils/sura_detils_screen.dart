import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/most_recent_provider.dart';
import 'package:islami/ui/home/tabs/quran/detils/sura_content_item.dart';
import 'package:islami/ui/home/tabs/quran/quran_resurces.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';
import 'package:provider/provider.dart';

class SuraDetilsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetilsScreen';

   SuraDetilsScreen({super.key});

  @override
  State<SuraDetilsScreen> createState() => _SuraDetilsScreenState();
}

class _SuraDetilsScreenState extends State<SuraDetilsScreen> {
  String suraContent = '';
  late MostRecentProvider mostRecentProvider;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mostRecentProvider.readLastSuraList();
  }

  @override
  Widget build(BuildContext context) {
    mostRecentProvider = Provider.of<MostRecentProvider>(context);
    int index = ModalRoute.of(context)?.settings.arguments as int;
    if (suraContent.isEmpty) {
      loadSuraFile(index);
    }
    
    
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: Text(
          QuranResurces.englishQuranList[index],
        style: AppStyle.bold20Primary,
        ),

      ),
      body: 
      suraContent.isEmpty ?
      Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
      )
      :
      Expanded(
        child: Column(
             
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.leftCornerQuran),
                Text(QuranResurces.arabicQauranList[index],
                style: AppStyle.bold20Primary,),
                Image.asset(AppAssets.rightCornerQuran),
              ],
            ),
            Expanded(child: SingleChildScrollView(child: SuraContentItem(suraContent: suraContent))),
            
            Image.asset(AppAssets.masqed),
            
          ],
        ),
      ),
      
    );
  }

  void loadSuraFile(int index) async{
  String fileContent = await rootBundle.loadString('assets/files/${index + 1}.txt');
  List<String> lines = fileContent.split('\n');
  for (var i = 0; i < lines.length; i++) {
    lines[i] += '[${i + 1}] ';
  }
  suraContent = lines.join();
  
  Future.delayed(Duration(seconds: 1),() => setState(() {
    
  }));
  
  }
}