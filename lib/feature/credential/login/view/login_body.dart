import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odin_smart_app/core/_core_exports.dart';

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
              controller: context.watch<LoginCubit>().emailController,
            ),
            const SizedBox(height: 20),
            AppTextFormField(
              controller: context.watch<LoginCubit>().passwordController,
            ),
            const SizedBox(height: 20),
            AppFilledButton(
                onPressed: () => context.read<LoginCubit>().login(),
                buttonText: "LOGIN")
          ],
        );
      },
    );
  }
}
