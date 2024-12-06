import 'package:bhagavad_gita_advance/screens/Adhyay/components/title_box.dart';
import 'package:bhagavad_gita_advance/screens/components/gita_text_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';




class ChapterListScrollView extends StatelessWidget {
  const ChapterListScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GitaTextImage(),

          //all titles
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 26),
            width: width,
            decoration: BoxDecoration(
              color: offWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 26.0, horizontal: 16),
              child: Column(
                //list of title box using list.generate
                children: List.generate(
                    data[0]['chapters'].length, (index) => TitleBox( index: index,)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
