import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../core/_core_exports.dart';
import '../../_feature_exports.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isDrawer: false,
      body: Padding(
        padding: PaddingConstants.generalPagePadding,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            AppTextFormField(
              hintText: "New password",
              controller: context.watch<SettingsCubit>().passwordControllerOne,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            AppTextFormField(
              hintText: "Confirm new password",
              controller: context.watch<SettingsCubit>().passwordControllerTwo,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            AppFilledButton(
                onPressed: () => context.read<SettingsCubit>().changePassword(),
                buttonText: "SAVE"),
          ],
        ),
      ),
    );
  }
}
