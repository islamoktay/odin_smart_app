import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class WeatherCubit extends Cubit<GenericState> {
  int i = 0;

  final WeatherRepository _weatherRepository;
  WeatherCubit(this._weatherRepository) : super(GenericInitial());

  Future<void> getWeatherMethod() async {
    if (i == 0) {
      await Geolocator.openLocationSettings();
      i++;
    } else {
      await LocationService.getCurrentLocation();
      getInfo(LocationService.locationString);
    }
  }

  Future<void> getInfo(String latLon) async {
    try {
      emit(GenericLoading());
      final response = await _weatherRepository.getInfo(latLon);
      emit(GenericCompletedItem<WeatherModel>(response));
    } on NetworkError catch (e) {
      emit(GenericError(e.message, e.statusCode));
    }
  }
}
