import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';
import 'package:odin_smart_app/core/shared_widgets/app_filled_long_button.dart';
import 'package:odin_smart_app/core/shared_widgets/app_text_form_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          controller: emailController,
        ),
        const SizedBox(height: 20),
        AppTextFormField(
          controller: passwordController,
        ),
        const SizedBox(height: 20),
        AppFilledLongButton(
            onPressed: (() async {
              AuthEnums? result =
                  await AuthenticationService(_firebaseAuth).signIn(
                email: emailController.text,
                password: passwordController.text,
              );
              if (result == AuthEnums.SING_IN) {
                Go.to.page(RouteConstant.HOME_PAGE_VIEW);
              } else {
                showCustomMessenger("Access Denied");
              }
            }),
            buttonText: "LOGIN")
      ],
    );
  }
}
