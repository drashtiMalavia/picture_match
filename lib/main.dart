import 'package:flutter/material.dart';
import 'package:picture_match/select_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Preference.Initialization();
  return runApp(MaterialApp(home: select_mode(),debugShowCheckedModeBanner: false,));
}

class Preference
{
  static SharedPreferences? prefs;
  static Initialization() async {
    prefs=await SharedPreferences.getInstance();
  }
  //for notimelimit
  static setTimeNotimelimit(int levelNo, int sec){
    prefs?.setInt('TimeNotime_$levelNo', sec);
  }
  static getTimeNotimelimit(int levelNo)
  {
    return prefs?.getInt('TimeNotime_$levelNo')??0;
  }
  static setLevelStatusNotimelimit(int levelNo){
    prefs?.setString('levelStatusnotime_$levelNo','win');
  }
  static getLevlStatusNotimelimit(int levelNo){
    return prefs?.getString('levelStatusnotime_$levelNo')??'pending';
  }
  //for normal
  static setTimeNormal(int levelNo, int sec){
    prefs?.setInt('TimeNormal_$levelNo', sec);
  }
  static getTimeNormal(int levelNo)
  {
    return prefs?.getInt('TimeNormal_$levelNo')??0;
  }
  static setLevelStatusNormal(int levelNo){
    prefs?.setString('levelStatusNormal_$levelNo','win');
  }
  static getLevlStatusNormal(int levelNo){
    return prefs?.getString('levelStatusNormal_$levelNo')??'pending';
  }
  //for hard
  static setTimeHard(int levelNo, int sec){
    prefs?.setInt('Timehard_$levelNo', sec);
  }
  static getTimeHard(int levelNo)
  {
    return prefs?.getInt('Timehard_$levelNo')??0;
  }
  static setLevelStatusHard(int levelNo){
    prefs?.setString('levelStatushard_$levelNo','win');
  }
  static getLevlStatusHard(int levelNo){
    return prefs?.getString('levelStatushard_$levelNo')??'pending';
  }
}

