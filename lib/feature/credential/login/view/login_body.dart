import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../_feature_exports.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          return showCustomMessenger("Access Denied");
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            AppTextFormField(
              hintText: "Username",
              controller: context.watch<LoginCubit>().emailController,
            ),
            const SizedBox(height: 20),
            AppTextFormField(
              isObscure: true,
              hintText: "Password",
              controller: context.watch<LoginCubit>().passwordController,
            ),
            const SizedBox(height: 20),
            AppFilledButton(
                buttonColor: AppColors.secondaryColor,
                textColor: Colors.white,
                onPressed: () => context.read<LoginCubit>().login(),
                buttonText: "LOGIN")
          ],
        );
      },
    );
  }
}
