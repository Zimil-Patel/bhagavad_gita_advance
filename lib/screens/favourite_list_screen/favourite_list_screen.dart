import 'package:bhagavad_gita_advance/screens/favourite_list_screen/components/fav_shlok_scroll_view.dart';
import 'package:flutter/material.dart';

import '../components/background_image.dart';

class FavouriteListScreen extends StatelessWidget {
  const FavouriteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          FavShlokScrollView(),
        ],
      ),
    );
  }
}
