import 'dart:convert';
import 'dart:developer';

import 'package:bhagavad_gita_advance/model/gita_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Language {
  English,
  Gujarati,
  Hindi,
}

class HomeProvider extends ChangeNotifier {
  List<GitaModel> chapterList = [];
  Language language = Language.Gujarati;

  Future<void> initialise() async {
    try {
      final json = await rootBundle.loadString('assets/jsons/data.json');
      final data = jsonDecode(json);
      chapterList = (data as List).map((e) => GitaModel.fromJson(e)).toList();
      log("Chapter list loaded successfully...");
    } catch (e) {
      log("Failed loading chapter list!!!: $e");
    }
    await getLangPreference();

  }

  Future<void> setLanguage(Language lang) async {
    language = lang;
    await saveLanguagePreference(lang.name);
    notifyListeners();
  }

  Future<void> saveLanguagePreference(String lang) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      bool result = await preferences.setString('lang', lang);
      log("Language saved: $lang, Status: $result");
    } catch (e) {
      log("Failed saving language!!! : $e");
    }
  }

  Future<void> getLangPreference() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? lang = preferences.getString('lang');
      language = Language.values.firstWhere(
            (e) => e.name == lang,
        orElse: () => Language.English,
      );
      log("Got Language: ${language.name}");
    } catch (e) {
      log("Failed loading language preference: $e");
    }
  }

  Future<void> cycleLanguage() async {
    int currentIndex = Language.values.indexOf(language);
    int nextIndex = (currentIndex + 1) % Language.values.length;
    language = Language.values[nextIndex];
    await saveLanguagePreference(language.name);
    log("Language changed to: ${language.name}");
    notifyListeners();
  }
  

  String getMeaningTitle(ChapterName chapterName) {
    switch (language.name){
      case "English":
        return chapterName.english;
      case "Gujarati":
        return chapterName.gujarati;
      case "Hindi":
        return chapterName.hindi;

      default:
        return " ";
    }
  }

  String getMeaningText(Verse verse) {
    switch (language.name){
      case "English":
        return verse.text.english;
      case "Gujarati":
        return verse.text.gujarati;
      case "Hindi":
        return verse.text.hindi;

      default:
        return " ";
    }
  }

}
