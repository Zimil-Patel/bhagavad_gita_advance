import 'package:flutter/material.dart';

import '../../../utils/constant.dart';



class GitaTextImage extends StatelessWidget {
  const GitaTextImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 3.5,
      child: Image.asset(
        'assets/images/text.png',
        height: 130,
        width: 130,
      ),
    );
  }
}