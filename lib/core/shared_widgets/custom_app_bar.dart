import 'package:flutter/material.dart';

import '../_core_exports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? isBackIcon;
  final bool? isDrawer;
  final String? numPadShow;

  const CustomAppBar(
      {Key? key, this.isBackIcon = true, this.isDrawer = true, this.numPadShow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBackIcon == true ? const BackButtonIconWidget() : null,
      title: numPadShow == null
          ? const AppBarTextLogo()
          : Container(
              decoration: BoxDecoration(
                color: AppColors.purpleColor,
                borderRadius: BorderRadius.circular(3),
              ),
              padding: const EdgeInsets.all(4),
              child: AppTextWidget(
                numPadShow!,
                textSize: 30,
              ),
            ),
      actions: isDrawer == true
          ? [
              const DrawerMenuIcon(),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
