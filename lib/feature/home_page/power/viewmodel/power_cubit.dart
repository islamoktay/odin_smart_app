import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class PowerCubit extends Cubit<GenericState> {
  List<bool> isMainList = [];
  List<bool> isPowerList = [];

  final PowerRepository _powerRepository;
  PowerCubit(this._powerRepository) : super(GenericInitial());

  Future<bool> clickIconMethod(int index) async {
    isPowerList[index] = !isPowerList[index];
    await updatePower();
    return isPowerList[index];
  }

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _powerRepository.getInfo();
      buildisMainList(response);
      buildisPowerList(response);
      emit(GenericCompletedItem<PowerModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  Future<void> updateMain() async {
    try {
      emit(GenericLoading());
      final response = await _powerRepository.updateMain(isMainList);
      buildisMainList(response);
      emit(GenericCompletedItem<PowerModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  Future<void> updatePower() async {
    try {
      emit(GenericLoading());
      final response = await _powerRepository.updatePower(isPowerList);
      buildisPowerList(response);
      emit(GenericCompletedItem<PowerModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  void buildisMainList(PowerModel response) {
    isMainList.add(response.fridge!.isMain!);
    isMainList.add(response.lightbulbs!.isMain!);
    isMainList.add(response.plugs!.isMain!);
    isMainList.add(response.refrigirator!.isMain!);
    isMainList.add(response.television!.isMain!);
  }

  void buildisPowerList(PowerModel response) {
    isPowerList.add(response.isPower!);
    isPowerList.add(response.fridge!.isPower!);
    isPowerList.add(response.lightbulbs!.isPower!);
    isPowerList.add(response.plugs!.isPower!);
    isPowerList.add(response.refrigirator!.isPower!);
    isPowerList.add(response.television!.isPower!);
  }
}
