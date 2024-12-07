import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
import 'package:bhagavad_gita_advance/screens/components/copy_share_button.dart';
import 'package:bhagavad_gita_advance/screens/components/gita_text_image.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/theme_colors.dart';
import '../../utils/constant.dart';
import '../../utils/gita_data.dart';
import '../../utils/resuable_properties.dart';

class Maahaatmy extends StatelessWidget {
  const Maahaatmy({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          MaahaatmyScrollView(),
        ],
      ),
    );
  }


}

class MaahaatmyScrollView extends StatelessWidget {
  const MaahaatmyScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //gita text image
          GitaTextImage(),

          //all titles
          Container(
            width: width,
            margin: const EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
              child: Column(
                  //list of title box using list.generate
                  children: [
                    Container(
                      width: width,
                      decoration: containerDeoration(Theme.of(context).colorScheme.primary),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 12),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      data[2]['index'],
                                      style: TextStyle(
                                        fontSize: height / 40,
                                        fontWeight: FontWeight.w300,

                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    AddMahaatmyText(),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const CopyShareButton(),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class AddMahaatmyText extends StatelessWidget {
  const AddMahaatmyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data[2]['maahaatmy'],
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: height / 40,
        fontWeight: FontWeight.w400,

      ),
    );
  }
}

