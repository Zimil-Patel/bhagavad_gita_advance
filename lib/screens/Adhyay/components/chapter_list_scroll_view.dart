import 'package:bhagavad_gita_advance/provider/home_provider.dart';
import 'package:bhagavad_gita_advance/screens/Adhyay/components/title_box.dart';
import 'package:bhagavad_gita_advance/screens/components/gita_text_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';




class ChapterListScrollView extends StatelessWidget {
  const ChapterListScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final homeP = context.watch<HomeProvider>();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const GitaTextImage(),

          //all titles
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 26),
            width: width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 26.0, horizontal: 16),
              child: Column(
                //list of title box using list.generate
                children: List.generate(
                    homeP.chapterList.length, (index) => TitleBox( index: index,)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
