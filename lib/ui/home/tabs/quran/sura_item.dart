import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_style.dart';

class SuraItem extends StatelessWidget {
  const SuraItem({super.key});

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
            Text('1',
            style: AppStyle.bold14White,),
          ],
        ),
        SizedBox(width: width * 0.04,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Al-Fatiha',
            style: AppStyle.bold20White,),
            Text('7 Verses',
            style: AppStyle.bold14White,),
          ],
        ),
        Spacer(),
        Text('الفاتحة',
        style: AppStyle.bold20White,)
      ],
    );
  }
}