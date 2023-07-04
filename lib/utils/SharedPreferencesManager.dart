import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager{

  getSharedPreference(){
    return  SharedPreferences.getInstance();
  }
}