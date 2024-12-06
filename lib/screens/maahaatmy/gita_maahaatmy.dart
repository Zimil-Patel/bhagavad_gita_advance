import 'package:bhagavad_gita_advance/screens/components/background_image.dart';
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
      backgroundColor: bg,
      body: Stack(
        children: [
          //background image of body
          BackGroundImage(),

          //titles
          addColumn(),
        ],
      ),
    );
  }

//gita text and titles
  addColumn() {
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
                                      data[2]['index'],
                                      style: TextStyle(
                                        fontSize: height / 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    addText(),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //copy and share button
                          addCpyShareBtn(),
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

  //udf text
  addText() {
    return Text(
      data[2]['maahaatmy'],
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: height / 40,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }

  addCpyShareBtn() {
    return Container(
      height: 10,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
        color: Color(0xff2e2e2e),
      ),
      width: width,
    );
  }
}

