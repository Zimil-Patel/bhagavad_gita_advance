import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/theme_colors.dart';
import 'components/shlok_list_scroll_view.dart';

class ShlokList extends StatelessWidget {
  const ShlokList({super.key, required this.chapterIndex});

  final int chapterIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image of body
          const BackGroundImage(),

          //titles
          ShlokListScrollView(chIndex: chapterIndex,),
        ],
      ),
    );
  }
}

int chapterIndex = 0;
