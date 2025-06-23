import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/quran/quran_resurces.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_style.dart';

class SuraItem extends StatelessWidget {
  int index;
   SuraItem({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.suraNumberIcon),
            Text('${index + 1}',
            style: AppStyle.bold14White,),
          ],
        ),
        SizedBox(width: width * 0.04,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(QuranResurces.englishQuranList[index],
            style: AppStyle.bold20White,),
            Text(QuranResurces.versesNumberList[index],
            style: AppStyle.bold14White,),
          ],
        ),
        Spacer(),
        Text(QuranResurces.arabicQauranList[index],
        style: AppStyle.bold20White,)
      ],
    );
  }
}