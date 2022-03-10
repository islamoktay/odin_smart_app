import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class PowerCubit extends Cubit<GenericState> {
  final PowerRepository _powerRepository;
  PowerCubit(this._powerRepository) : super(GenericInitial());

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _powerRepository.getInfo();

      emit(GenericCompletedItem<PowerModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  Future<void> updatePower(bool item) async {
    try {
      emit(GenericLoading());
      final response = await _powerRepository.updatePower(item);
      emit(GenericCompletedItem<PowerModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }
}
