import 'package:flutter/material.dart';

import '../_core_exports.dart';

class AppFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonText;
  final Color? shadowColor;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  const AppFilledButton({
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
        textAlign: TextAlign.center,
        style: AppTextStyles.bodyTextStyleWhite.copyWith(
          color: textColor ?? Colors.white,
          letterSpacing: 1.0,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 50),
        primary: buttonColor ?? AppColors.purpleColor,
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
        shadowColor: shadowColor ?? Colors.green,
      ),
    );
  }
}
