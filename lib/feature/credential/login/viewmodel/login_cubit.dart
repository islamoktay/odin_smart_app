import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';

import '../../../../core/_package_exports.dart';

class LoginCubit extends Cubit<GenericState> {
  LoginCubit() : super(GenericInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> login() async {
    if (emailValidator(emailController.text)) {
      AuthEnums? result = await AuthenticationService(firebaseAuth).signIn(
        email: emailController.text,
        password: passwordController.text,
      );
      if (result == AuthEnums.SING_IN) {
        Go.to.page(RouteConstant.HOME_PAGE_VIEW);
      } else {
        showCustomMessenger("Access Denied");
      }
    } else {
      showCustomMessenger("Please enter a valid email");
    }
  }
}
