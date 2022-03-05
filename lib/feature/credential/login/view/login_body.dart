import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/shared_widgets/app_filled_long_button.dart';
import 'package:odin_smart_app/core/shared_widgets/app_text_form_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(),
        const SizedBox(height: 20),
        AppTextFormField(),
        const SizedBox(height: 20),
        AppFilledLongButton(onPressed: (() {}), buttonText: "LOGIN")
      ],
    );
  }
}
