import 'package:flutter/material.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';

class SettingsCubit extends Cubit<GenericState> {
  SettingsCubit() : super(GenericInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControllerOne = TextEditingController();
  TextEditingController passwordControllerTwo = TextEditingController();

  final user = FirebaseAuth.instance.currentUser;

  Future<void> updateUserEmail() async {
    if (emailValidator(emailController.text)) {
      await user?.updateEmail(emailController.text);
      Go.to.back();
    } else {
      showCustomMessenger("Please enter a valid email");
    }
  }

  Future<void> changePassword() async {
    if (passwordControllerOne.text == passwordControllerTwo.text) {
      await user?.updatePassword(passwordControllerOne.text);
      Go.to.back();
    } else {
      showCustomMessenger("Please enter same passwords");
    }
  }
}
