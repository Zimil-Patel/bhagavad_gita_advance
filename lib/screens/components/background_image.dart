import 'package:bhagavad_gita_advance/main.dart';
import 'package:bhagavad_gita_advance/theme/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constant.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Theme.of(context).colorScheme.surface,
      child: Image.asset(

        context.watch<ThemeProvider>().isDark ?
        'assets/images/appBG.png' : 'assets/images/appBG.png',
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
