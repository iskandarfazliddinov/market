
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemPreferences{
  static const PREF_KEY = 'pref_key';

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  Future<bool?> getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY);
  }

}