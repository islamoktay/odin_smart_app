import 'package:flutter/material.dart';

import '../_core_exports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? isBackIcon;
  final bool? isDrawer;
  const CustomAppBar({
    Key? key,
    this.isBackIcon = true,
    this.isDrawer = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBackIcon == true ? const BackButtonIconWidget() : null,
      title: const AppBarTextLogo(),
      actions: isDrawer == true
          ? const [
              DrawerMenuIcon(),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
