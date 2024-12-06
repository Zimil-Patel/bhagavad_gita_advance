import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../shlok_list_ui.dart';

class ShlokAddText extends StatelessWidget {
  const ShlokAddText({
    super.key, required this.index, required this.mapKey,
  });

  final int index;
  final String mapKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      data[0]['chapters'][chapterIndex]['shloks'][index][mapKey],
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: height / 34,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}
