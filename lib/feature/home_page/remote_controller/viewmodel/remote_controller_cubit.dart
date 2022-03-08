import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class RemoteControllerCubit extends Cubit<GenericState> {
  final RemoteControllerRepository _remoteControllerRepository;
  RemoteControllerCubit(this._remoteControllerRepository)
      : super(GenericInitial());

  Future<void> getInfo() async {
    try {
      emit(GenericLoading());
      final response = await _remoteControllerRepository.getInfo();
      emit(GenericCompletedItem<RemoteControllerModel>(response));
      await dataController(response);
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }

  Future<void> dataController(RemoteControllerModel response) async {
    Future.delayed(const Duration(seconds: 100)).then((value) async {
      final responseNew = await _remoteControllerRepository.getInfo();
      if (response.tvProgram != responseNew.tvProgram ||
          response.tvChannel != responseNew.tvChannel) {
        await getInfo();
      } else {
        dataController(response);
      }
    });
  }
}
