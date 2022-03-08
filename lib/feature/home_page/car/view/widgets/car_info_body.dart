import 'package:flutter/material.dart';

import '../../../../../core/_core_exports.dart';

class CarInfoBody extends StatelessWidget {
  final GenericCompletedItem state;

  const CarInfoBody(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Battery : %${state.response.battery}",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Street : ${state.response.street}",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.fade,
          ),
          Text(
            "Location : ${state.response.region}/${state.response.city}",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
