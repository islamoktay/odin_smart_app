import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';
import '../../../../core/_package_exports.dart';

class SignUpCubit extends Cubit<GenericState> {
  SignUpCubit() : super(GenericInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControllerOne = TextEditingController();
  TextEditingController passwordControllerTwo = TextEditingController();

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp() async {
    if (emailValidator(emailController.text) &&
        isSameTextValidator(
            passwordControllerOne.text, passwordControllerTwo.text)) {
      AuthEnums? result = await AuthenticationService(firebaseAuth).signUp(
        email: emailController.text,
        password: passwordControllerOne.text,
      );
      if (result == AuthEnums.SIGN_UP) {
        Go.to.page(RouteConstant.HOME_PAGE_VIEW);
      } else {
        showCustomMessenger("Registiration Denied");
      }
    } else {
      showCustomMessenger("Please check your email or passwords");
    }
  }
}
