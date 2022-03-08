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
          AppTextWidget(
            "City : ${state.response.location.name}",
          ),
          AppTextWidget(
            "Country : ${state.response.location.country}",
          ),
          AppTextWidget(
            "Degree : ${state.response.current.tempC.toString()} °C",
          ),
          AppTextWidget(
            "Feels : ${state.response.current.feelslikeC.toString()} °C",
          ),
        ],
      ),
    );
  }
}
