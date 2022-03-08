import 'package:flutter/material.dart';

import '../_core_exports.dart';

// ignore: must_be_immutable
class AppTextWidget extends StatelessWidget {
  final String text;
  double? textSize;
  AppTextWidget(this.text, {Key? key, this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          AppTextStyles.bodyTextStyleWhite.copyWith(fontSize: textSize ?? 14),
      overflow: TextOverflow.fade,
    );
  }
}
