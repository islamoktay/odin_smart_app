import 'package:flutter/material.dart';

import '../_core_exports.dart';

class AppBarTextLogo extends StatelessWidget {
  const AppBarTextLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 80,
      child: Image.asset(ImageConstants.textLogo),
    );
  }
}
