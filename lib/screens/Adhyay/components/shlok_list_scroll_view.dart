import 'package:bhagavad_gita_advance/screens/Adhyay/components/shlok_title_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../shlok_list_ui.dart';


class ShlokListScrollView extends StatelessWidget {
  const ShlokListScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //gita text image
          SizedBox(
            height: height / 3.5,
            child: Image.asset(
              'assets/images/text.png',
              height: 130,
              width: 130,
            ),
          ),

          //all titles
          Container(
            width: width,
            margin: const EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
              color: offWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
              child: Column(
                //list of title box using list.generate
                children: List.generate(
                    data[0]['chapters'][chapterIndex]['shloks'].length,
                        (index) => ShlokTitleBox(index: index)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}