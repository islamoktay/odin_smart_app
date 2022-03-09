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
          numPadShow: state,
          body: Padding(
            padding: PaddingConstants.generalPagePadding,
            child: Column(
              children: const [
                NumpadBody(),
                MenuButtonsBody(),
                DirectionPadBody(),
              ],
            ),
          ),
        );
      },
    );
  }
}
