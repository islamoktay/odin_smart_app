import 'package:flutter/material.dart';

import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

class CameraListWidget extends StatelessWidget {
  final GenericCompletedList<CameraModel> state;
  const CameraListWidget(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.response.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            AppTextWidget(state.response[index].name!),
            const Spacer(),
            Icon(
              state.response[index].isActive! ? Icons.done : Icons.close,
              color: Colors.white,
              size: 17,
            ),
          ],
        );
      },
    );
  }
}
