import 'package:bhagavad_gita_advance/main.dart';
import 'package:bhagavad_gita_advance/provider/favorite_provider.dart';
import 'package:bhagavad_gita_advance/screens/favourite_list_screen/components/fav_shlok_title_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant.dart';
import '../../Adhyay/components/thumbnail_box.dart';
import '../../components/gita_text_image.dart';

class FavShlokScrollView extends StatelessWidget {
  const FavShlokScrollView({super.key});

  @override
  Widget build(BuildContext context) {

    final favP = context.watch<FavoriteProvider>();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const GitaTextImage(showButton: false,),

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
              child:  favP.favModelList.isNotEmpty ? ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => FavShlokTitleBox(index: index),
                itemCount: favP.favModelList.length,
              ) :  SizedBox(
                child: Center(
                  child: Text("No Favourites", style: TextStyle(fontSize: height * 0.02),),
                ),
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
