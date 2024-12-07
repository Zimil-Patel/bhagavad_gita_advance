import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
import 'package:bhagavad_gita_advance/screens/components/gita_text_image.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/theme_colors.dart';
import '../../utils/constant.dart';
import '../../utils/gita_data.dart';
import '../../utils/resuable_properties.dart';
import '../components/copy_share_button.dart';
import 'components/gita_saar_scroll_view.dart';


class GitaSaar extends StatelessWidget {
  const GitaSaar({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          GitaSaarScrollView(),
        ],
      ),
    );
  }



}
