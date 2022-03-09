import 'package:flutter/material.dart';
import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: PaddingConstants.generalPagePadding,
        child: Column(
          children: [
            SettingsButton(
              fun: () => Go.to.page(RouteConstant.EDIT_PROFILE_VIEW),
              text: "Edit Profile",
            ),
            SettingsButton(
              fun: () => Go.to.page(RouteConstant.CHANGE_PASSWORD_VIEW),
              text: "Change Password",
            ),
            AppFilledButton(
                onPressed: () {
                  AuthenticationService(_firebaseAuth).signOut();
                  Go.to.page(RouteConstant.CREDENTIAL_VIEW);
                },
                buttonText: "SIGN OUT")
          ],
        ),
      ),
    );
  }
}
