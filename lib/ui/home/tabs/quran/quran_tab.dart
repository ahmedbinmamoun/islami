import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/quran/most_recent_widget.dart';
import 'package:islami/ui/home/tabs/quran/quran_resurces.dart';
import 'package:islami/ui/home/tabs/quran/detils/sura_detils_screen.dart';
import 'package:islami/ui/home/tabs/quran/sura_item.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_style.dart';
import 'package:islami/utils/shared_preferences.dart';

class QuranTab extends StatefulWidget {
   QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
   List<int> filterList = List.generate(114, (index) => index,);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02,),
          TextField(
            onChanged: (newText) {
              searchSuraByNewText(newText);
            },
            decoration: InputDecoration(
              prefixIcon: Image.asset(AppAssets.bookIcon),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2,
                ),
                ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2,
                ),
                ),
            
              hintText: 'Sura Name',
              hintStyle: AppStyle.bold16White,
              
            ),
            cursorColor: AppColors.primaryColor,
            style: AppStyle.bold16White,
          
            
          ),
          SizedBox(height: height * 0.02,),
          MostRecentWidget(),
          SizedBox(height: height * 0.01,),
          Text('Suras List',
          style: AppStyle.bold16White,),
          SizedBox(height: height * 0.01,),
          Expanded(
            
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  saveLastSuraIndex(filterList[index]);
                  Navigator.pushNamed(context, SuraDetilsScreen.routeName,
                  arguments: filterList[index],
                  );
                },
                child: SuraItem(index: filterList[index] ,));
            },
             separatorBuilder: (context, index) {
               return Divider(
                thickness: 1,
                indent: width * 0.1,
                endIndent: width * 0.1,
               );
             },
              itemCount: filterList.length),
          )
        ],
      ),
    );
  }

void searchSuraByNewText(String newText) {
  List<int> filterSearchList = [];
  for (var i = 0; i < QuranResurces.englishQuranList.length; i++) {
    if(QuranResurces.arabicQauranList[i].contains(newText)){
      filterSearchList.add(i);
    }

    if(QuranResurces.englishQuranList[i].toLowerCase().contains(newText.toLowerCase())){
      filterSearchList.add(i);
    }
    filterList = filterSearchList;
    setState(() {
      
    });
    
  }
}
}