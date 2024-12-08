import 'package:bhagavad_gita_advance/utils/colors/theme_colors.dart';
import 'package:bhagavad_gita_advance/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteListsButton extends StatelessWidget {
  const FavouriteListsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return CupertinoButton(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: dividerColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          size: height * 0.03,
          color: bg,
          Icons.book,
        ),
      ),
      onPressed: () {
        // themeFalse.toggleTheme();
      },
    );
  }
}