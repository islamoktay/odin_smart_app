import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

class LightsListWidget extends StatelessWidget {
  final GenericCompletedItem<LightModel> state;
  const LightsListWidget(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: state.response.ligtsDevices!.length,
      itemBuilder: ((context, index) {
        return CustomCheckBox(
          isLightOpen: state.response.ligtsDevices![index].isOpen!,
          onChanged: (value) =>
              context.read<LightsCubit>().clickButtonMethod(value!, index),
          name: state.response.ligtsDevices![index].name!,
        );
      }),
    );
  }
}
