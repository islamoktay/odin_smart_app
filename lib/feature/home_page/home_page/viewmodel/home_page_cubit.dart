import 'package:flutter/material.dart';
import 'package:odin_smart_app/feature/home_page/car/view/car_body.dart';

import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class HomePageCubit extends Cubit<GenericState> {
  HomePageCubit() : super(GenericInitial());
  List<Widget> homePageGridBodyList = [
    const RemoteControllerBody(),
    const LightsBody(),
    const PowerBody(),
    const WeatherBody(),
    const CarBody(),
    const CameraBody(),
  ];
}
