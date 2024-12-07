import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';



class GitaSaarAddText extends StatelessWidget {
  const GitaSaarAddText({
    super.key, required this.index, required this.mapKey,
  });

  final int index;
  final String mapKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      data[1]['chapters'][index][mapKey],
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: height / 34,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

