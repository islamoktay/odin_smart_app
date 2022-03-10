import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

class PowerIconWidget extends StatelessWidget {
  final GenericCompletedItem state;
  const PowerIconWidget(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        state.response.isPower = !state.response.isPower;
        context.read<PowerCubit>().updatePower(state.response.isPower);
      },
      child: Center(
        child: Icon(
          Icons.power_settings_new,
          color: state.response.isPower ? Colors.greenAccent : Colors.redAccent,
          size: 85,
        ),
      ),
    );
  }
}
