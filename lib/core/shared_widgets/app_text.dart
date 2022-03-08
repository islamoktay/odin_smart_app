import 'package:flutter/material.dart';

import '../_core_exports.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  const AppTextWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.bodyTextStyleWhite,
      overflow: TextOverflow.fade,
    );
  }
}
