import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/theme_colors.dart';
import '../../utils/constant.dart';
import '../../utils/gita_data.dart';
import 'components/aartee_scroll_view.dart';

class Aaratee extends StatelessWidget {
  const Aaratee({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bg,
      body: const Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          AarateeScrollView(),
        ],
      ),
    );
  }


}

