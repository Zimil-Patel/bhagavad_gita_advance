
import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
import 'package:bhagavad_gita_advance/screens/home/components/home_scroll_view.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/theme_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: const Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          HomeScrollView(),
        ],
      ),
    );
  }
  
}
