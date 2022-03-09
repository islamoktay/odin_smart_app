import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class LightsCubit extends Cubit<GenericState> {
  List<bool> isOpenList = [];

  final LightsRepository _lightsRepository;
  LightsCubit(this._lightsRepository) : super(GenericInitial());

  Future<bool> clickButtonMethod(bool value, int index) async {
    isOpenList[index] = value;
    await updateInfo();
    return value = !value;
  }

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _lightsRepository.getInfo();
      for (var item in response.ligtsDevices!) {
        isOpenList.add(item.isOpen!);
      }
      emit(GenericCompletedItem<LightModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  Future<void> updateInfo() async {
    try {
      emit(GenericLoading());
      final response = await _lightsRepository.updateInfo(isOpenList);
      emit(GenericCompletedItem<LightModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }
}
