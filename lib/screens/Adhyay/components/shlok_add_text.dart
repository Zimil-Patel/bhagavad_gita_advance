import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class ShlokAddText extends StatelessWidget {
  const ShlokAddText({
    super.key, required this.shlok,
  });

  final String shlok;

  @override
  Widget build(BuildContext context) {
    return Text(
      shlok,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: height / 34,
        fontWeight: FontWeight.w400,

      ),
    );
  }
}
