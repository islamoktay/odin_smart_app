import 'package:odin_smart_app/feature/_feature_exports.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';

class RemoteControllerDetailPageCubit extends Cubit<String?> {
  RemoteControllerDetailPageCubit() : super(null);

  List<String> settingButtons = [
    "Netflix",
    "Youtube",
    "Menu",
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
}
