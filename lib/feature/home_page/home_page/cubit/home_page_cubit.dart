import 'package:flutter/material.dart';

import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class HomePageCubit extends Cubit<GenericState> {
  HomePageCubit() : super(GenericInitial());
  List<Widget> homePageGridBodyList = [
    const RemoteControllerBody(),
    const RemoteControllerBody(),
    const RemoteControllerBody(),
    const RemoteControllerBody(),
    const RemoteControllerBody(),
    const RemoteControllerBody(),
  ];
}
