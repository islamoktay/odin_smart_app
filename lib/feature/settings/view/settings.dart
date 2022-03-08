import 'package:flutter/material.dart';
import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBackIcon: true,
      isDrawer: true,
      body: Padding(
        padding: PaddingConstants.generalPagePadding,
        child: Column(
          children: [
            SettingsButton(
              fun: () {},
              text: "Edit Profile",
            ),
            SettingsButton(
              fun: () {},
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
