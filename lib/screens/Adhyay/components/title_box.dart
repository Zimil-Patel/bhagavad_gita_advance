import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/theme_colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../../../utils/resuable_properties.dart';
import '../shlok_list_ui.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ShlokList(),));
      },
      pressedOpacity: 0.8,
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: containerDeoration(),
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icon1.png',
              height: height / 12,
              width: 80,
            ),
            Container(
              height: height / 12,
              width: 1,
              color: dividerColor,
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data[0]['chapters'][index]['id'],
                      style: TextStyle(
                        fontSize: height / 50,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data[0]['chapters'][index]['name'],
                      style: TextStyle(
                        fontSize: height / 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
