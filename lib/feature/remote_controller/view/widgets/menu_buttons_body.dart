import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../../core/_core_exports.dart';
import '../../../_feature_exports.dart';

class MenuButtonsBody extends StatelessWidget {
  const MenuButtonsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: context
          .watch<RemoteControllerDetailPageCubit>()
          .settingButtons
          .length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async => await context
              .read<RemoteControllerDetailPageCubit>()
              .sendPressedButtonData(
                  sl<RemoteControllerDetailPageCubit>().settingButtons[index]),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(15)),
            child: AppTextWidget(
              context
                  .watch<RemoteControllerDetailPageCubit>()
                  .settingButtons[index],
              textSize: 20,
            ),
          ),
        );
      },
    );
  }
}
