import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class CarRepository {
  Future<CarModel> getInfo();
}

class SampleCarRepository implements CarRepository {
  @override
  Future<CarModel> getInfo() async {
    return await compute(computeFunctionForGet, UrlConstant.POWER_URL);
  }

  static Future<CarModel> computeFunctionForGet(String message) async {
    final response = await http.get(
      Uri.parse(UrlConstant.CAR_URL),
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      CarModel responseModel = CarModel.fromMap(jsonBody);

      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
