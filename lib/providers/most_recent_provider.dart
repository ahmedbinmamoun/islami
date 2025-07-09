import 'package:flutter/material.dart';
import 'package:islami/utils/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MostRecentProvider extends ChangeNotifier{
  List<int> mostRecentList = [];

  void readLastSuraList() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentIndicesAsString =  prefs.getStringList(SharedPrefsKey.mostRecent) ?? [];
  mostRecentList =  mostRecentIndicesAsString.map((element) => int.parse(element)).toList();
  notifyListeners();
  
}
}