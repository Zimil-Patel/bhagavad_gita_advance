import 'package:bhagavad_gita_advance/screens/components/animated_theme_btn.dart';
import 'package:bhagavad_gita_advance/screens/components/favourite_lists_button.dart';
import 'package:bhagavad_gita_advance/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant.dart';

class GitaTextImage extends StatelessWidget {
  const GitaTextImage({
    super.key,
    this.offHeight = 4.5,
  });

  final double offHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: defPadding * 6.5, right: defPadding * 1.5),
                  child: ThemeAnimatedButton(),
                ),
              ),

              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: defPadding * 6.5, left: defPadding * 1.5),
                  child: FavouriteListsButton(),
                ),
              ),

              Center(
                child: SizedBox(
                  height: height / offHeight,
                  child: Image.asset(
                    context.watch<ThemeProvider>().isDark ?
                    'assets/images/text.png' : 'assets/images/text.png',
                    height: 130,
                    width: 130,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
