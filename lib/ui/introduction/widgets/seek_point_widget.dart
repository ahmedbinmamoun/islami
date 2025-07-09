import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';

class SeekWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: 20,
        height: 7,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


class PointWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 10,
        height: 10,
        
        decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}