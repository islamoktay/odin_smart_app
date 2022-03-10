import 'package:flutter/material.dart';

import '../../../../core/_core_exports.dart';
import '../../../_feature_exports.dart';

class CarDetailInfoBody extends StatelessWidget {
  final GenericCompletedItem<CarModel> state;
  const CarDetailInfoBody(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: AppTextWidget(
            "Battery : %${state.response.battery}",
            textSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: AppTextWidget(
            "Location : ${state.response.region}/${state.response.city}",
            textSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset(ImageConstants.my_location),
                const SizedBox(width: 10),
                AppTextWidget(": Car"),
                const Spacer(),
                Image.asset(ImageConstants.station_location),
                const SizedBox(width: 10),
                AppTextWidget(": Charge Stations"),
              ],
            )),
        const SizedBox(
          height: 27,
        ),
      ],
    );
  }
}
