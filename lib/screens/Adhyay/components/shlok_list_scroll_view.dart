import 'dart:developer';

import 'package:bhagavad_gita_advance/screens/Adhyay/components/shlok_title_box.dart';
import 'package:bhagavad_gita_advance/screens/Adhyay/components/thumbnail_box.dart';
import 'package:bhagavad_gita_advance/screens/components/gita_text_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/home_provider.dart';
import '../../../utils/constant.dart';

class ShlokListScrollView extends StatelessWidget {
  const ShlokListScrollView({
    super.key,
    required this.chIndex,
  });

  final int chIndex;

  @override
  Widget build(BuildContext context) {
    final homeP = context.watch<HomeProvider>();

    log("Chapter Index : ${homeP.chapterList[chIndex].verses.length}");

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const GitaTextImage(),

          const ThumbnailBox(),

          //all titles
          Container(
            width: width,
            margin: const EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ShlokTitleBox(
                  index: index,
                  chIndex: chIndex,
                ),
                itemCount: homeP.chapterList[chIndex].verses.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
