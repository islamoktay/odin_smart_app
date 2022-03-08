import 'package:odin_smart_app/feature/_feature_exports.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';

class RemoteControllerDetailPageCubit extends Cubit<String?> {
  RemoteControllerDetailPageCubit() : super(null);

  List<String> settingButtons = [
    "Netflix",
    "Youtube",
    "Exit",
    "Home",
    "Back",
  ];

  String? showInput;
  List<String> numPadTrackerList = [];
  Timer? timer;

  void onPressedMethodForNumpad(int item) {
    if (timer != null) {
      timer?.cancel();
    }
    numPadTrackerList.add(numPadSignDecider(item));
    showInput = numPadTrackerList.join("");
    emit(showInput);
    numPadTrackerListClear(showInput);
  }

  void numPadTrackerListClear(String? input) {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      sl<SampleRemoteControllerDetailRepository>().updateNumpadInput(input!);
      numPadTrackerList.clear();
      Future.delayed(const Duration(seconds: 2)).then((value) =>
          sl<SampleRemoteControllerDetailRepository>().updateNumpadInput(""));
      showInput = null;
      emit(showInput);
      timer.cancel();
    });
  }

  String numPadSignDecider(int index) {
    switch (index) {
      case 9:
        return 0.toString();
      case 10:
        return "*";
      case 11:
        return "#";
      default:
        return (index + 1).toString();
    }
  }

  Future<StatusCode> sendPressedButtonData(String item) async {
    switch (item) {
      case "Netflix":
        sl<SampleRemoteControllerDetailRepository>().updateNetflix(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>().updateNetflix(false));
      case "Youtube":
        sl<SampleRemoteControllerDetailRepository>().updatYoutube(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>().updatYoutube(false));
      case "Exit":
        sl<SampleRemoteControllerDetailRepository>().updateExitButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>()
                .updateExitButton(false));
      case "Home":
        sl<SampleRemoteControllerDetailRepository>().updateHomeButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>()
                .updateHomeButton(false));
      case "Back":
        sl<SampleRemoteControllerDetailRepository>().updateBackButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>()
                .updateBackButton(false));
      case "up":
        sl<SampleRemoteControllerDetailRepository>().updateUpButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>().updateUpButton(false));
      case "left":
        sl<SampleRemoteControllerDetailRepository>().updateLeftButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>()
                .updateLeftButton(false));
      case "ok":
        sl<SampleRemoteControllerDetailRepository>().updateOkButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>().updateOkButton(false));
      case "right":
        sl<SampleRemoteControllerDetailRepository>().updateRightButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>()
                .updateRightButton(false));
      case "down":
        sl<SampleRemoteControllerDetailRepository>().updateDownButton(true);
        return Future.delayed(const Duration(seconds: 2)).then((value) =>
            sl<SampleRemoteControllerDetailRepository>()
                .updateDownButton(false));
      default:
        return StatusCode.SUCCESS;
    }
  }
}
