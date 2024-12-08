import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/favorite_provider.dart';
import '../../../provider/home_provider.dart';
import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/resuable_properties.dart';
import '../../Adhyay/components/add_cpy_share_btn.dart';
import '../../Adhyay/components/shlok_add_text.dart';

class FavShlokTitleBox extends StatelessWidget {
  const FavShlokTitleBox({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    final homeP = context.watch<HomeProvider>();
    final homePF = context.read<HomeProvider>();
    final favP = context.watch<FavoriteProvider>();
    final data = favP.favModelList[index];
    final shlok = data.text.sanskrit;
    final meaningText = homePF.getMeaningText(data);

    return Container(
      width: width,
      decoration: containerDeoration(Theme.of(context).colorScheme.primary),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defPadding * 2, vertical: defPadding),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  final favPF = context.read<FavoriteProvider>();
                  if(favP.isFav(shlok)){
                    favPF.removePreference(data);
                  } else {
                    favPF.savePreference(data);
                  }
                },
                child: Icon(
                  !favP.isFav(shlok) ? Icons.favorite_outline_rounded : Icons.favorite_rounded,
                  size: height * 0.04,
                  color: !favP.isFav(shlok) ? Theme.of(context).colorScheme.onSurface.withOpacity(0.5) : Colors.redAccent.withOpacity(0.8),
                  shadows: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding:
            const EdgeInsets.symmetric( horizontal: 12),
            child: Column(
              children: [

                //shlok
                ShlokAddText(
                  shlok: shlok,
                ),

                //divider
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    color: dividerColor,
                  ),
                ),


                //meaning of shlok
                ShlokAddText(
                  shlok: meaningText,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: defPadding * 2,
          ),
          //copy and share button
          AddCpyShareBtn(shlok: shlok, meaning: meaningText),
        ],
      ),
    );
  }
}
