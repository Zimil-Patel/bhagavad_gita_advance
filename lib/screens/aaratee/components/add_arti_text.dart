import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../../utils/gita_data.dart';



class AddArtiText extends StatelessWidget {
  const AddArtiText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data[3]['aaratee'],
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: height / 50,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
