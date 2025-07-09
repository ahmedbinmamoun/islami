import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_style.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>  with SingleTickerProviderStateMixin{

late AnimationController _controller;
 double _angle = 0;
 int counter = 0;
 int count = 0;
 int index = 0;

 List<String> tasbehList = [
  'سبحان الله',
  'الحمدلله',
  'الله اكبر',
 ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _rotateImage() {
    _angle += 0.064; 
      if (count > 32) {
        index++;
        count = 0;
        

        if (index > 2) {
          index = 0;
        }

      }else{
        counter++;
        count++;
      }
      if (counter >= 99) {
        counter = 0;
      }

    setState(() {
      
      
      
      
    });
    _controller.forward(from: 10); 
  }




  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: height * 0.09,),
        Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى',textAlign: TextAlign.center,
        style: AppStyle.bold36White,),
        
        Column(
          children: [
            Image.asset(AppAssets.sebhaHead),
            Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
              onTap: _rotateImage,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _angle * _controller.value,
                    child: child,
                  );
                },
                child: Image.asset(AppAssets.sebhaBody,width: width * 0.88,),
              ),
            ),
                Column(
                    
                  children: [
                    Text(tasbehList[index],style: AppStyle.bold36White,),
                    SizedBox(height: height * 0.02,),
                    Text('$counter',style: AppStyle.bold36White,),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
    
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}