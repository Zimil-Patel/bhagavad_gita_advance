import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDark = true;

  // TOGGLE THEME
  void toggleTheme() {
    isDark = !isDark;
    saveThemeToPreference(isDark);
    notifyListeners();
  }

  // SYNC WITH SHARED PREFERENCE
  Future<void> saveThemeToPreference(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    try {
      preferences.setBool('isDark', value);
      log("theme saved successfully... : $value");
    } catch (e) {
      log("Failed to save theme!!!$e");
    }
  }

  // GET THEME PREFERENCE
  Future<void> getThemePreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (preferences.containsKey('isDark')) {
      try {
        bool value = preferences.getBool('isDark') ?? true;
        isDark = value;
        log("Got theme: $isDark");
      } catch (e) {
        log("Failed to get theme!!!$e");
      }
    } else {
      await saveThemeToPreference(isDark);
    }

    notifyListeners();
  }

  Future<void> _init() async {
    await getThemePreference();
  }

  ThemeProvider() {
    _init();
  }
}
