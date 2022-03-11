import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class LightsCubit extends Cubit<GenericState> {
  List<bool> isOpenList = [];
  List<double> levelOfOpenList = [];

  final SampleLightsRepository _lightsRepository;
  LightsCubit(this._lightsRepository) : super(GenericInitial());

  Future<bool> clickButtonMethod(bool value, int index) async {
    isOpenList[index] = value;
    await updateLightIsOpenInfo();
    return value = !value;
  }

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _lightsRepository.getInfo();
      for (var item in response.ligtsDevices!) {
        isOpenList.add(item.isOpen!);
        levelOfOpenList.add(item.levelOfOpen!);
      }
      await updateModelLocator(response);
      emit(GenericCompletedItem<LightModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  Future<void> updateModelLocator(LightModel response) async {
    sl<LightsCubit>().levelOfOpenList = levelOfOpenList;
    sl<LightModel>().ligtsDevices![0].closeTime =
        response.ligtsDevices![0].closeTime;
    for (var i = 0; i < 4; i++) {
      sl<LightModel>().ligtsDevices![i].closeTime =
          response.ligtsDevices![i].closeTime;
      sl<LightModel>().ligtsDevices![i].isOpen =
          response.ligtsDevices![i].isOpen;
      sl<LightModel>().ligtsDevices![i].levelOfOpen =
          response.ligtsDevices![i].levelOfOpen;
      sl<LightModel>().ligtsDevices![i].name = response.ligtsDevices![i].name;
      sl<LightModel>().ligtsDevices![i].openTime =
          response.ligtsDevices![i].openTime;
    }
  }

  Future<void> updateLightIsOpenInfo() async {
    try {
      emit(GenericLoading());
      final response = await _lightsRepository.updateLightInfo(isOpenList);
      for (var item in response.ligtsDevices!) {
        isOpenList.add(item.isOpen!);
      }
      updateModelLocator(response);
      emit(GenericCompletedItem<LightModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }
}
