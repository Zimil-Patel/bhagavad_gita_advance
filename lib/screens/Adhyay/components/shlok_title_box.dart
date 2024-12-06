import 'package:bhagavad_gita_advance/screens/Adhyay/components/shlok_add_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../../../utils/resuable_properties.dart';
import '../shlok_list_ui.dart';
import 'add_cpy_share_btn.dart';


class ShlokTitleBox extends StatelessWidget {
  const ShlokTitleBox({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: containerDeoration(),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 12),
            child: Column(
              children: [
                index == 0
                    ? Column(
                  children: [
                    Text(
                      data[0]['chapters'][chapterIndex]['id'],
                      style: TextStyle(
                        fontSize: height / 50,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      data[0]['chapters'][chapterIndex]['name'],
                      style: TextStyle(
                        fontSize: height / 35,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                  ],
                )
                    : const SizedBox(),

                //shlok
                ShlokAddText(index: index, mapKey: 'shlok'),

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
                ShlokAddText(index: index, mapKey: 'meaning'),
              ],
            ),
          ),

          //copy and share button
          AddCpyShareBtn(index: index,mapKey1: 'shlok',mapKey2: 'meaning'),
        ],
      ),
    );
  }
}