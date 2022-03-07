import 'package:flutter/material.dart';

import '../_core_exports.dart';

class BackButtonIconWidget extends StatelessWidget {
  const BackButtonIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Go.to.back(),
      child: const Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Icon(
          Icons.arrow_back,
          color: AppColors.darkGrey,
          size: 35,
        ),
      ),
    );
  }
}
