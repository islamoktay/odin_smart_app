import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

class LightsListWidget extends StatelessWidget {
  final GenericCompletedItem state;
  const LightsListWidget(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: context.watch<LightsCubit>().itemList.length,
      itemBuilder: ((context, index) {
        return CustomCheckBox(
          isLightOpen: context.watch<LightsCubit>().itemList[index].isOpen!,
          onChanged: (value) =>
              context.read<LightsCubit>().clickButtonMethod(value!, index),
          name: context.watch<LightsCubit>().itemList[index].name!,
        );
      }),
    );
  }
}
