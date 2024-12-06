
import 'package:bhagavad_gita_advance/screens/home/components/home_title_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';


class HomeScrollView extends StatelessWidget {
  const HomeScrollView({
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
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: width,
            decoration: BoxDecoration(
              color: offWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 26.0, horizontal: 16),
              child: Column(
                //list of title box using list.generate
                children:
                List.generate(data.length, (index) => HomeTitleBox(index: index)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
