import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/theme_colors.dart';
import 'components/chapter_list_scroll_view.dart';

class ChaptersList extends StatelessWidget {
  const ChaptersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: const Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          ChapterListScrollView(),
        ],
      ),
    );
  }
}
