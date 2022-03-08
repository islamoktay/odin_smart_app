import 'package:flutter/material.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class RemoteControllerDetailPage extends StatelessWidget {
  const RemoteControllerDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RemoteControllerDetailPageCubit, String?>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomScaffold(
          isBackIcon: true,
          isDrawer: true,
          numPadShow: state,
          body: Padding(
            padding: PaddingConstants.generalPagePadding,
            child: Column(
              children: [
                const NumpadBody(),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
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
                    );
                  },
                ),
                Column(
                  children: [
                    Image.asset(ImageConstants.up),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ImageConstants.left),
                        const SizedBox(width: 25),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            ImageConstants.okButton,
                            color: AppColors.purpleColor,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Image.asset(ImageConstants.right),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Image.asset(ImageConstants.down),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
