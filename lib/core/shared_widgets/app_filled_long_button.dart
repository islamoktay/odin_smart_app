import 'package:flutter/material.dart';

import '../_core_exports.dart';

class AppFilledLongButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonText;
  final Color? shadowColor;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  const AppFilledLongButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.shadowColor,
    this.buttonColor,
    this.borderColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: AppTextStyles.bodyTextStyle.copyWith(
          color: textColor ?? Colors.black,
          letterSpacing: 1.0,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 50),
        primary: buttonColor ?? AppColors.orangeColor,
        onPrimary: Colors.white,
        side: BorderSide(
          width: .8,
          color: borderColor ?? Colors.transparent,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        elevation: 0,
        shadowColor: shadowColor ?? AppColors.greenColor,
      ),
    );
  }
}
