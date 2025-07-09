import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefsKey{
  static const String mostRecent = 'most_recent';
}
void saveLastSuraIndex(int newSuraIndex) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentIndicesList = prefs.getStringList(SharedPrefsKey.mostRecent) ?? []; 
  if (mostRecentIndicesList.contains('$newSuraIndex')) {
    mostRecentIndicesList.remove('$newSuraIndex');
  }
  mostRecentIndicesList.insert(0,'$newSuraIndex');
  if (mostRecentIndicesList.length > 5) {
    mostRecentIndicesList = mostRecentIndicesList.sublist(0,5);
  }
  await prefs.setStringList(SharedPrefsKey.mostRecent,mostRecentIndicesList);

}

