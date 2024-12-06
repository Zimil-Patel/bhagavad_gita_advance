import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class CopyShareButton extends StatelessWidget {
  const CopyShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
