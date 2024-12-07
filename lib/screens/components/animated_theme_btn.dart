import 'package:bhagavad_gita_advance/utils/colors/theme_colors.dart';
import 'package:bhagavad_gita_advance/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_provider.dart';

class ThemeAnimatedButton extends StatelessWidget {
  const ThemeAnimatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themeTrue = Provider.of<ThemeProvider>(context);
    var themeFalse = Provider.of<ThemeProvider>(context, listen: false);

    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 400),
      tween:
      Tween<double>(begin: 0, end: themeTrue.isDark ? 6.2832 : -6.2832),
      builder: (context, value, child) => Transform.rotate(
        angle: value,
        child: CupertinoButton(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: dividerColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              size: height * 0.03,
              color: bg,
              !themeTrue.isDark ? Icons.sunny : Icons.nightlight_round,
            ),
          ),
          onPressed: () {
            themeFalse.toggleTheme();
          },
        ),
      ),
    );
  }
}