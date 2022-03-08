import 'package:flutter/material.dart';

import '../_core_exports.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final bool? isBackIcon;
  final bool? isDrawer;
  final String? numPadShow;
  const CustomScaffold(
      {Key? key,
      required this.body,
      this.isBackIcon = true,
      this.isDrawer = true,
      this.numPadShow})
      : super(key: key);

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          isBackIcon: widget.isBackIcon ?? true,
          isDrawer: widget.isDrawer ?? true,
          numPadShow: widget.numPadShow,
        ),
        body: widget.body);
  }
}
