import 'package:flutter/material.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class LightDetailPageCubit extends Cubit<String> {
  LightDetailPageCubit() : super("");

  void onApplyButtonPressed(int index) {
    sl<LightModel>().ligtsDevices![index].closeTime =
        sl<LightDetailPageCubit>().controllerDecider(index)[0].text;
    sl<LightModel>().ligtsDevices![index].openTime =
        sl<LightDetailPageCubit>().controllerDecider(index)[1].text;
    sl<SampleLightsRepository>().updateInfoForAll();
  }

  void onCancelButtonPressed(
    int index,
    GenericCompletedItem<LightModel> state,
  ) {
    sl<LightDetailPageCubit>().controllerDecider(index)[0].clear();
    sl<LightDetailPageCubit>().controllerDecider(index)[1].clear();
    state.response.ligtsDevices![index].closeTime = "";
    state.response.ligtsDevices![index].openTime = "";
    sl<LightModel>().ligtsDevices![index].closeTime = "";
    sl<LightModel>().ligtsDevices![index].openTime = "";
    sl<SampleLightsRepository>().updateInfoForAll();
  }

  List<TextEditingController> textEditingController = List.generate(
      (sl<LightsCubit>().levelOfOpenList.length * 2),
      (index) => TextEditingController());

  String generateHintTextForOpenTime(
      GenericCompletedItem<LightModel> state, int index) {
    if (state.response.ligtsDevices![index].openTime == null ||
        state.response.ligtsDevices![index].openTime == "") {
      return "Start Time";
    } else {
      return "${state.response.ligtsDevices![index].openTime!.substring(0, 2)} : ${state.response.ligtsDevices![index].openTime!.substring(2)}";
    }
  }

  String generateHintTextForCloseTime(
      GenericCompletedItem<LightModel> state, int index) {
    if (state.response.ligtsDevices![index].closeTime == null ||
        state.response.ligtsDevices![index].closeTime == "") {
      return "End Time";
    } else {
      return "${state.response.ligtsDevices![index].closeTime!.substring(0, 2)} : ${state.response.ligtsDevices![index].closeTime!.substring(2)}";
    }
  }

  List<TextEditingController> controllerDecider(int index) {
    switch (index) {
      case 0:
        return [textEditingController[0], textEditingController[1]];
      case 1:
        return [textEditingController[2], textEditingController[3]];
      case 2:
        return [textEditingController[4], textEditingController[5]];
      case 3:
        return [textEditingController[6], textEditingController[7]];
      default:
        return [];
    }
  }
}
