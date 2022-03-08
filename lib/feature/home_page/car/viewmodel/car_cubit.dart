import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class CarCubit extends Cubit<GenericState> {
  final CarRepository _carRepository;
  CarCubit(this._carRepository) : super(GenericInitial());

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _carRepository.getInfo();
      emit(GenericCompletedItem<CarModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }
}
