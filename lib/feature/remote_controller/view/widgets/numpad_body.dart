import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../../core/_core_exports.dart';
import '../../../_feature_exports.dart';

class NumpadBody extends StatefulWidget {
  const NumpadBody({Key? key}) : super(key: key);

  @override
  State<NumpadBody> createState() => _NumpadBodyState();
}

class _NumpadBodyState extends State<NumpadBody> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => context
              .read<RemoteControllerDetailPageCubit>()
              .onPressedMethodForNumpad(index),
          child: CircleAvatar(
            backgroundColor: AppColors.secondaryColor,
            child: AppTextWidget(
              context
                  .read<RemoteControllerDetailPageCubit>()
                  .numPadSignDecider(index),
              textSize: 28,
            ),
          ),
        );
      },
    );
  }
}
