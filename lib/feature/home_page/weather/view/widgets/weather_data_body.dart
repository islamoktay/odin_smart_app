import 'package:flutter/material.dart';

import '../../../../../core/_core_exports.dart';

class WeatherDataBody extends StatelessWidget {
  final GenericCompletedItem state;
  const WeatherDataBody(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "City : ${state.response.location.name}",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Country : ${state.response.location.country}",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Degree : ${state.response.current.tempC.toString()} °C",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Feels : ${state.response.current.feelslikeC.toString()} °C",
            style: AppTextStyles.bodyTextStyleWhite,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
