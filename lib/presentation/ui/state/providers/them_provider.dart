
import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/them.dart';
import 'package:market/presentation/ui/resource/them_prefrences.dart';

class ThemProvider with ChangeNotifier{
  ThemeData themeData = lightMode;
  ThemPreferences preferences = ThemPreferences();
  bool isDarkMode = false;

  ThemProvider() {
    getPreferences();
  }
  void getPreferences()async {
    themeData = await preferences.getTheme() ?? false ? darkMode : lightMode;
    isDarkMode = themeData.brightness == Brightness.dark;
    notifyListeners();
  }

  void toggleTheme() {
    if (isDarkMode) {
      themeData = lightMode;
    } else {
      themeData = darkMode;
    }
    isDarkMode = !isDarkMode;
    preferences.setTheme(isDarkMode);
    notifyListeners();
  }

  bool getValue() {
    return isDarkMode;
  }
}