import 'package:flutter/material.dart';
import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          return showCustomMessenger("Registiration Denied");
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            AppTextFormField(
              hintText: "Username",
              controller: context.watch<SignUpCubit>().emailController,
            ),
            const SizedBox(height: 20),
            AppTextFormField(
              hintText: "Password",
              controller: context.watch<SignUpCubit>().passwordControllerOne,
            ),
            const SizedBox(height: 20),
            AppTextFormField(
              hintText: "Password Again",
              controller: context.watch<SignUpCubit>().passwordControllerTwo,
            ),
            const SizedBox(height: 20),
            AppFilledButton(
                onPressed: () => context.read<SignUpCubit>().signUp(),
                buttonText: "SIGN UP")
          ],
        );
      },
    );
  }
}
