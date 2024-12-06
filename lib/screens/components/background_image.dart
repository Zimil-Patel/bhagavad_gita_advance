import 'package:flutter/cupertino.dart';

import '../../utils/colors/theme_colors.dart';
import '../../utils/constant.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: bg,
      child: Image.asset(
        'assets/images/appBG.png',
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
