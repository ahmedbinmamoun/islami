import 'package:flutter/material.dart';
import 'package:islami/utils/app_style.dart';

class SuraContentItem extends StatelessWidget {
  String suraContent;
   SuraContentItem({super.key,required this.suraContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(suraContent,
      style: AppStyle.bold20Primary,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      ),
    );
  }
}