import 'package:flutter/material.dart';

import '../_core_exports.dart';

class SettingsButton extends StatefulWidget {
  final String text;
  final Function() fun;
  const SettingsButton({Key? key, required this.text, required this.fun})
      : super(key: key);

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.fun,
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 15),
            decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(5)),
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: AppTextWidget(
              widget.text,
              textSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
