import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../core/_core_exports.dart';
import '../../_feature_exports.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({Key? key}) : super(key: key);

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
              hintText: "Please enter an email",
              controller: context.watch<SettingsCubit>().emailController,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            AppFilledButton(
                onPressed: () =>
                    context.read<SettingsCubit>().updateUserEmail(),
                buttonText: "SAVE"),
          ],
        ),
      ),
    );
  }
}
