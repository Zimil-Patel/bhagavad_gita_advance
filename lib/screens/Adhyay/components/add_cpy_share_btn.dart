import 'package:bhagavad_gita_advance/main.dart';
import 'package:bhagavad_gita_advance/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';
import '../shlok_list_ui.dart';


class AddCpyShareBtn extends StatelessWidget {
  const AddCpyShareBtn({
    super.key, required this.shlok, required this.meaning,

  });

  final String shlok, meaning;

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<HomeProvider>();
    final lang = provider.language.name;

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
            text: shlok,
            meaning: meaning,
          ),
          const SizedBox(
            width: 50,
          ),
          TextButton(btnName: lang, showIcon: true,),
        ],
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  const TextButton({
    super.key,
    required this.btnName,
    this.showIcon = false,  this.text = "",  this.meaning = "",
  });

  final String btnName;
  final String text;
  final String meaning;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        if (btnName == 'COPY') {
          Clipboard.setData(
            ClipboardData(
                text:
                '$text \n $meaning'),
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
        } else {
          context.read<HomeProvider>().cycleLanguage();
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIcon ? const Padding(
            padding: EdgeInsets.only(right: defPadding),
            child: Row(
              children: [
                Icon(Icons.language, color: Colors.blue,),
                SizedBox(
                  width: defPadding,
                ),
                Icon(Icons.swap_horiz_rounded, color: Colors.blue),
              ],
            ),
          ) : const SizedBox(),
          Text(
            btnName,
            style: TextStyle(
              fontSize: height / 45,
              fontWeight: FontWeight.bold,
              color: const Color(0xfffeb211),
            ),
          ),

        ],
      ),
    );
  }
}

