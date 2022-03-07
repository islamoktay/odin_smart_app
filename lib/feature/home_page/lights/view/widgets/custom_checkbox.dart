// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../../core/_core_exports.dart';

class CustomCheckBox extends StatefulWidget {
  bool isLightOpen;
  final Function(bool?)? onChanged;
  final String name;
  CustomCheckBox({
    Key? key,
    required this.isLightOpen,
    required this.onChanged,
    required this.name,
  }) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 22,
            width: 30,
            child: Checkbox(
              activeColor: AppColors.scaffoldBackgroundColor,
              checkColor: AppColors.secondaryColor,
              side: const BorderSide(color: AppColors.scaffoldBackgroundColor),
              value: widget.isLightOpen,
              onChanged: widget.onChanged,
            ),
          ),
          Text(widget.name, style: AppTextStyles.bodyTextStyleWhite),
        ],
      ),
    );
  }
}
