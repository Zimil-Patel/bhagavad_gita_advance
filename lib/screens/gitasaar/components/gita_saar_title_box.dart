import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../../../utils/resuable_properties.dart';
import '../../components/copy_share_button.dart';
import '../gita_saar.dart';
import 'gita_saar_add_text.dart';


class GitaSaarTitleBox extends StatelessWidget {
  const GitaSaarTitleBox({
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
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      data[1]['chapters'][index]['id'],
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
                      data[1]['chapters'][index]['name'],
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
                ),

                //Shlok
                GitaSaarAddText(index: index, mapKey: 'meaning')
              ],
            ),
          ),

          //copy and share button
          const CopyShareButton(),
        ],
      ),
    );
  }
}



