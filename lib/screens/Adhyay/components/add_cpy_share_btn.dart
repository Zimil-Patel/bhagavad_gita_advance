import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../shlok_list_ui.dart';


class AddCpyShareBtn extends StatelessWidget {
  const AddCpyShareBtn({
    super.key,
    required this.index,
    required this.mapKey1,
    required this.mapKey2,
  });

  final int index;
  final String mapKey1, mapKey2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
        color: Color(0xff2e2e2e),
      ),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              btnName: 'COPY',
              index: index,
              mapKey1: mapKey1,
              mapKey2: mapKey2),
          const SizedBox(
            width: 50,
          ),
          TextButton(btnName: 'SHARE'),
        ],
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  const TextButton({
    super.key,
    required this.btnName,
    this.index,
    this.mapKey1,
    this.mapKey2,
  });

  final String btnName;
  final index;
  final mapKey1, mapKey2;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        if (btnName == 'COPY') {
          Clipboard.setData(
            ClipboardData(
                text:
                '${data[0]['chapters'][chapterIndex]['shloks'][index][mapKey1]} \n ${data[0]['chapters'][chapterIndex]['shloks'][index][mapKey2]}'),
          );

          const snackBar = SnackBar(
            duration: Duration(seconds: 1),
            content: Text(
              'Copied!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Text(
        btnName,
        style: TextStyle(
          fontSize: height / 45,
          fontWeight: FontWeight.bold,
          color: const Color(0xfffeb211),
        ),
      ),
    );
  }
}

