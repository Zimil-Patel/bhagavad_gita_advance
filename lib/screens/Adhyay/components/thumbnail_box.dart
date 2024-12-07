import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class ThumbnailBox extends StatelessWidget {
  const ThumbnailBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: defPadding, vertical: defPadding),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/thumbnail.png',
          fit: BoxFit.cover,
          width: width,
        ),
      ),
    );
  }
}