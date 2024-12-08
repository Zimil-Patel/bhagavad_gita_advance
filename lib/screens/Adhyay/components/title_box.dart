import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/home_provider.dart';
import '../../../theme/theme_provider.dart';
import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../../../utils/resuable_properties.dart';
import '../shlok_list_ui.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    final homeP = context.watch<HomeProvider>();
    final data = homeP.chapterList[index];
    final hindiIndex = data.hindiIndex;
    final name = data.chapterName.hindi;

    return CupertinoButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ShlokList(chapterIndex: index,),));
      },
      pressedOpacity: 0.8,
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: containerDeoration(Theme.of(context).colorScheme.primary),
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            Image.asset(
              context.watch<ThemeProvider>().isDark ?
              'assets/images/icon${(index - 1) % 6 + 1}w.png' : 'assets/images/icon${(index - 1) % 6 + 1}.png',
              height: height / 12,
              width: 80,
            ),
            Container(
              height: height / 12,
              width: 1,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hindiIndex,
                      style: TextStyle(
                        fontSize: height / 50,
                        fontWeight: FontWeight.w300,
                          color: Theme.of(context).colorScheme.onSurface
                      ),
                    ),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: height / 30,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onSurface
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
