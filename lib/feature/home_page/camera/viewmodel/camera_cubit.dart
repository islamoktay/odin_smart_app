import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class CameraCubit extends Cubit<GenericState> {
  final CameraRepository _cameraRepository;
  CameraCubit(this._cameraRepository) : super(GenericInitial());

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _cameraRepository.getInfo();

      emit(GenericCompletedList<CameraModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }
}
