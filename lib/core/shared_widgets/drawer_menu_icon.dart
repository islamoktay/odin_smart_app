import 'package:flutter/material.dart';

import '../_core_exports.dart';

class DrawerMenuIcon extends StatelessWidget {
  const DrawerMenuIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () => Go.to.page(RouteConstant.SETTINGS_VIEW),
        child: const Icon(
          Icons.menu,
          color: AppColors.darkGrey,
          size: 35,
        ),
      ),
    );
  }
}
