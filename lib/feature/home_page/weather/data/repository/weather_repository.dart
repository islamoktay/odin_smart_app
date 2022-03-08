import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class WeatherRepository {
  Future<WeatherModel> getInfo(String latLon);
}

class SampleWeatherRepository implements WeatherRepository {
  @override
  Future<WeatherModel> getInfo(String latLon) async {
    String apiUrl =
        "http://api.weatherapi.com/v1/current.json?key=01a411ad3bb94b72b9a75706220803&q=$latLon&aqi=no";
    final response = await http.get(
      Uri.parse(apiUrl),
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      WeatherModel responseModel = WeatherModel.fromMap(jsonBody);

      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
