import 'package:bhagavad_gita_advance/screens/components/gita_text_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import 'gita_saar_title_box.dart';




class GitaSaarScrollView extends StatelessWidget {
  const GitaSaarScrollView({
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
            width: width,
            margin: const EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
              child: Column(
                //list of title box using list.generate
                children: List.generate(
                    data[1]['chapters'].length, (index) => GitaSaarTitleBox( index: index,)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}