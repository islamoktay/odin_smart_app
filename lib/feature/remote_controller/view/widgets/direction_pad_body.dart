import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../../core/_core_exports.dart';
import '../../../_feature_exports.dart';

class DirectionPadBody extends StatelessWidget {
  const DirectionPadBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () => context
                .read<RemoteControllerDetailPageCubit>()
                .sendPressedButtonData("up"),
            child: Image.asset(ImageConstants.up)),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => context
                    .read<RemoteControllerDetailPageCubit>()
                    .sendPressedButtonData("left"),
                child: Image.asset(ImageConstants.left)),
            const SizedBox(width: 25),
            GestureDetector(
              onTap: () => context
                  .read<RemoteControllerDetailPageCubit>()
                  .sendPressedButtonData("ok"),
              child: Image.asset(
                ImageConstants.okButton,
                color: AppColors.purpleColor,
              ),
            ),
            const SizedBox(width: 25),
            GestureDetector(
                onTap: () => context
                    .read<RemoteControllerDetailPageCubit>()
                    .sendPressedButtonData("right"),
                child: Image.asset(ImageConstants.right)),
          ],
        ),
        const SizedBox(height: 25),
        GestureDetector(
            onTap: () => context
                .read<RemoteControllerDetailPageCubit>()
                .sendPressedButtonData("down"),
            child: Image.asset(ImageConstants.down)),
      ],
    );
  }
}
