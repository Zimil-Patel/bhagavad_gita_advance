import 'package:bhagavad_gita_advance/screens/gitasaar/gita_saar.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../../../utils/resuable_properties.dart';
import '../../components/copy_share_button.dart';
import '../../components/gita_text_image.dart';
import '../gita_aaratee.dart';
import 'add_arti_text.dart';



class AarateeScrollView extends StatelessWidget {
  const AarateeScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //gita text image
          const GitaTextImage(),

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
                  children: [
                    Container(
                      width: width,
                      decoration: containerDeoration(),
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
                                      data[3]['index'],
                                      style: TextStyle(
                                        fontSize: height / 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),


                                    const AddArtiText(),


                                    const SizedBox(
                                      height: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //copy and share button
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
