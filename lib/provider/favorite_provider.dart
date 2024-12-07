import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteProvider extends ChangeNotifier{

  List<String> favVersesList = [];

  Future<void> savePreference(String verse) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(favVersesList.contains(verse)){
      log("Already Added!!!");
    } else {
      favVersesList.add(verse);
      bool result = await preferences.setStringList('versesList', favVersesList);
      log("List saved... : $favVersesList");
    }

    notifyListeners();
  }

  bool isFav(String verse) => favVersesList.contains(verse);


  Future<void> removePreference(String verse) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(favVersesList.contains(verse)){
      favVersesList.remove(verse);
      bool result = await preferences.setStringList('versesList', favVersesList);
      log("List saved... : $favVersesList");
    }

    notifyListeners();
  }

  Future<List<String>> getPreferenceList() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try{
      log("Getting Preferences....");
      List<String> list = preferences.getStringList('versesList') ?? [];
      favVersesList.clear();
      favVersesList = list;
      log("Getting Preferences Done....");
      return list;
    } catch (e) {
      log("Failed to fetch list!!!");
    }
    return [];
  }

  Future<void> init() async {
    await getPreferenceList();
    log("Got List : $favVersesList");
  }
}