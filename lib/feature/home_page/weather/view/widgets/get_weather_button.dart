import 'package:flutter/material.dart';

import '../../../../../core/_core_exports.dart';
import '../../../../../core/_package_exports.dart';
import '../../../../_feature_exports.dart';

class GetWeatherButton extends StatefulWidget {
  const GetWeatherButton({Key? key}) : super(key: key);

  @override
  State<GetWeatherButton> createState() => _GetWeatherButtonState();
}

class _GetWeatherButtonState extends State<GetWeatherButton> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return AppFilledButton(
        onPressed: () async {
          if (i == 0) {
            await Geolocator.openLocationSettings();
            i++;
          } else {
            await LocationService.getCurrentLocation();
            context
                .read<WeatherCubit>()
                .getInfo(LocationService.locationString);
          }
        },
        buttonText: "Get Weather");
  }
}
