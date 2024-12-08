import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/gita_model.dart';

class FavoriteProvider extends ChangeNotifier{

  List<String> favVersesList = [];
  List<Verse> favModelList = [];

  Future<void> savePreference(Verse verse) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(favVersesList.contains(verse.text.sanskrit)){
      log("Already Added!!!");
    } else {
      favVersesList.add(verse.text.sanskrit);
      favModelList.add(verse);
      bool result = await preferences.setStringList('versesList', favVersesList);
      log("List saved... : $favVersesList");
    }

    notifyListeners();
  }

  bool isFav(String verse) => favVersesList.contains(verse);


  Future<void> removePreference(Verse verse) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(favVersesList.contains(verse.text.sanskrit) && favModelList.contains(verse)){
      log("Found...");
      favVersesList.remove(verse.text.sanskrit);
      favModelList.remove(verse);
      bool result = await preferences.setStringList('versesList', favVersesList);
      log("List saved... : $favVersesList");
      log("Model List saved... : $favModelList");
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

  Future<void> init(List<GitaModel> chapterList) async {
    await getPreferenceList();
    log("Got List : $favVersesList");
    getFavModelList(chapterList);
  }

  void getFavModelList(List<GitaModel> chapterList) {
    log("Getting model List...");
    if(favVersesList.isNotEmpty){
      for (var verse in favVersesList){
        for(var chapter in chapterList){
          for(var verseObj in chapter.verses){
            if(verseObj.text.sanskrit == verse){
              favModelList.add(verseObj);
            }
          }
        }
      }
    }
    log("Got Model List: $favModelList");
  }
}