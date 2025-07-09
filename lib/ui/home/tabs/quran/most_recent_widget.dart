import 'package:flutter/material.dart';
import 'package:islami/providers/most_recent_provider.dart';
import 'package:islami/ui/home/tabs/quran/detils/sura_detils_screen.dart';
import 'package:islami/ui/home/tabs/quran/quran_resurces.dart';
import 'package:islami/ui/home/tabs/quran/quran_tab.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';
import 'package:islami/utils/shared_preferences.dart';
import 'package:provider/provider.dart';

class MostRecentWidget extends StatefulWidget {
   MostRecentWidget({super.key});

  @override
  State<MostRecentWidget> createState() => _MostRecentWidgetState();
}

class _MostRecentWidgetState extends State<MostRecentWidget> {
  late MostRecentProvider mostRecentProvider;
   

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mostRecentProvider.readLastSuraList();
    },);
    
    
  }


  

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    mostRecentProvider = Provider.of<MostRecentProvider>(context);
    List<int> mostRecentList = List.generate(114, (index) => index,);
    
    return Visibility(
      visible: mostRecentProvider.mostRecentList.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  return InkWell(
                    onTap: () {

                  //     Navigator.pushNamed(context, SuraDetilsScreen.routeName,
                  // arguments: mostRecentList[index],
                  // );
                    },
                    child: Container(
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
                            Text(QuranResurces.englishQuranList[mostRecentProvider.mostRecentList[index]],
                            style: AppStyle.bold24Black,),
                            Text(QuranResurces.arabicQauranList[mostRecentProvider.mostRecentList[index]],
                            style: AppStyle.bold24Black,),
                            Text('${QuranResurces.versesNumberList[mostRecentProvider.mostRecentList[index]]} Verses',
                            style: AppStyle.bold14Black,),
                          ],),
                          
                          Image.asset(AppAssets.mostRecent),
                        ],
                        
                      ),
                      
                    ),
                  );
                },
                 separatorBuilder: (context, index) {
                   return SizedBox(width: width * 0.02,);
                 }, 
                 itemCount: mostRecentProvider.mostRecentList.length
                 ),
            ),
            
        ],
      ),
    );
  }
}