import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../_core_exports.dart';

class AppTextFormField extends StatelessWidget {
  final Function()? onFieldComplete;
  final VoidCallback? onTap;
  final Function(String)? onFieldSubmitted;
  final String? hintText;
  final String? labelText;
  final Widget? icon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Widget? suffix;
  final bool isObscure;
  final bool enabled;
  final int maxLines;
  final double? horizontalPadding;
  final double? verticalPadding;
  final int? textLimit;
  final FocusNode? focusNode;
  final ToolbarOptions? toolbarOptions;
  final double? radius;
  final bool? autoFocus;
  final AutovalidateMode? autovalidateMode;

  // ignore: use_key_in_widget_constructors
  const AppTextFormField({
    Key? key,
    this.hintText,
    this.onTap,
    this.onFieldComplete,
    this.onFieldSubmitted,
    this.icon,
    this.labelText,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.validator,
    this.onChanged,
    this.controller,
    this.isObscure = false,
    this.enabled = true,
    this.suffix,
    this.maxLines = 1,
    this.horizontalPadding,
    this.verticalPadding,
    this.textLimit,
    this.focusNode,
    this.radius = 8,
    this.toolbarOptions = const ToolbarOptions(
        cut: true, copy: true, selectAll: true, paste: true),
    this.autoFocus = false,
    this.autovalidateMode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 10),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(textLimit),
        ],
        enabled: enabled,
        onTap: onTap,
        focusNode: focusNode,
        onEditingComplete: onFieldComplete,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          counterText:
              textLimit == null ? "" : "${controller!.text.length}/$textLimit",
          isDense: true,
          hintText: hintText,
          hintStyle: AppTextStyles.bodyTextStyle.copyWith(
            color: Colors.grey,
          ),
          labelText: labelText,
          contentPadding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 10,
            horizontal: 12,
          ),
          labelStyle: AppTextStyles.bodyTextStyle.copyWith(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius!)),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius!)),
            borderSide: const BorderSide(color: Colors.grey, width: 1.6),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius!)),
            borderSide: const BorderSide(
              color: AppColors.redColor,
            ),
          ),
          prefixIcon: icon,
          suffixIcon: suffix != null
              ? Align(alignment: Alignment.center, child: suffix!)
              : null,
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 20,
            minHeight: 20,
            maxWidth: 36,
            minWidth: 20,
          ),
        ),
        autofocus: autoFocus!,
        maxLines: maxLines,
        obscureText: isObscure,
        cursorColor: Colors.black,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        toolbarOptions: toolbarOptions,
        autovalidateMode: autovalidateMode,
      ),
    );
  }
}
