import 'package:bhagavad_gita_advance/provider/favorite_provider.dart';
import 'package:bhagavad_gita_advance/screens/Adhyay/components/shlok_add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/home_provider.dart';
import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/resuable_properties.dart';
import 'add_cpy_share_btn.dart';

class ShlokTitleBox extends StatelessWidget {
  const ShlokTitleBox({
    super.key,
    required this.index,
    required this.chIndex,
  });

  final int index;
  final int chIndex;

  @override
  Widget build(BuildContext context) {
    final homeP = context.watch<HomeProvider>();
    final homePF = context.read<HomeProvider>();
    final favP = context.watch<FavoriteProvider>();
    final data = homeP.chapterList[chIndex].verses[index];
    final hindiIndex = homeP.chapterList[chIndex].hindiIndex;
    final title = homeP.chapterList[chIndex].chapterName.hindi;
    final shlok = data.text.sanskrit;
    final meaningTitle =
        homePF.getMeaningTitle(homeP.chapterList[chIndex].chapterName);
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
                      favPF.removePreference(shlok);
                    } else {
                      favPF.savePreference(shlok);
                    }
                },
                child: Icon(
                  !favP.isFav(shlok) ? Icons.favorite_outline_rounded : Icons.favorite_rounded,
                  size: height * 0.04,
                  color: !favP.isFav(shlok) ? Theme.of(context).colorScheme.onSurface.withOpacity(0.5) : Colors.redAccent.withOpacity(0.8),
                  shadows: [
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
                index == 0
                    ? Column(
                        children: [
                          Text(
                            hindiIndex,
                            style: TextStyle(
                              fontSize: height / 50,
                              fontWeight: FontWeight.w300,

                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: height / 35,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                        ],
                      )
                    : const SizedBox(),

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

                index == 0
                    ? Column(
                        children: [
                          Text(
                            meaningTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: height / 35,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                        ],
                      )
                    : const SizedBox(),

                //meaning of shlok
                ShlokAddText(
                  shlok: meaningText,
                ),
              ],
            ),
          ),

          SizedBox(
            height: defPadding * 2,
          ),
          //copy and share button
          AddCpyShareBtn(shlok: shlok, meaning: meaningText),
        ],
      ),
    );
  }
}
