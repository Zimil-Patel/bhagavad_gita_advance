
import 'package:bhagavad_gita_advance/main.dart';
import 'package:bhagavad_gita_advance/theme/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../../../utils/resuable_properties.dart';
import '../../Adhyay/chapter_list_ui.dart';
import '../../aaratee/gita_aaratee.dart';
import '../../gitasaar/gita_saar.dart';
import '../../maahaatmy/gita_maahaatmy.dart';


class HomeTitleBox extends StatelessWidget {
  const HomeTitleBox({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {



    return CupertinoButton(
      onPressed: () {
        if (index == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChaptersList(),));
        } else if (index == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const GitaSaar(),));
        } else if (index == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Maahaatmy(),));
        } else if (index == 3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Aaratee(),));
        }
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
               'assets/images/icon${index + 1}w.png' : 'assets/images/icon${index + 1}.png',
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
                child: Text(
                  data[index]['index'],
                  style: TextStyle(
                    fontSize: height / 30,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
