import 'package:flutter/material.dart';

import '../_core_exports.dart';

class GridMenuCustomContainer extends StatefulWidget {
  final String menuName;
  final Widget upperMenuWidget;
  final Function()? onTap;
  const GridMenuCustomContainer({
    Key? key,
    required this.menuName,
    required this.upperMenuWidget,
    this.onTap,
  }) : super(key: key);

  @override
  _GridMenuCustomContainerState createState() =>
      _GridMenuCustomContainerState();
}

class _GridMenuCustomContainerState extends State<GridMenuCustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.secondaryColor,
      ),
      height: 150,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15),
            child: SizedBox(
              height: 75,
              child: widget.upperMenuWidget,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
            indent: 10,
            endIndent: 10,
          ),
          GestureDetector(
            onTap: widget.onTap,
            child: Center(
              child: Text(
                widget.menuName,
                style: AppTextStyles.menuContainerBigStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
