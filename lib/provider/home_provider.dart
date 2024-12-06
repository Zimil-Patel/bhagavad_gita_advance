import 'dart:convert';
import 'dart:developer';

import 'package:bhagavad_gita_advance/model/gita_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeProvider extends ChangeNotifier{

  List<GitaModel> chapterList = [];

  Future<void> initialiseGitaModel() async {
    final json = await rootBundle.loadString('assets/jsons/data.json');
    final data = jsonDecode(json);
    chapterList = (data as List).map((e) => GitaModel.fromJson(e)).toList();
    log("Got list: $chapterList");
  }

}