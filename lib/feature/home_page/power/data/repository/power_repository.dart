import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class PowerRepository {
  Future<PowerModel> getInfo();
  Future<PowerModel> updatePower(bool item);
}

class SamplePowerRepository implements PowerRepository {
  @override
  Future<PowerModel> getInfo() async {
    return await compute(computeFunctionForGet, UrlConstant.POWER_URL);
  }

  static Future<PowerModel> computeFunctionForGet(String message) async {
    final response = await http.get(
      Uri.parse(message),
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      PowerModel responseModel = PowerModel.fromMap(jsonBody);
      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }

  @override
  Future<PowerModel> updatePower(bool item) async {
    String json = '{"isPower":$item}';

    final response = await http.patch(
      Uri.parse(UrlConstant.POWER_URL),
      body: json,
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      PowerModel responseModel = PowerModel.fromMap(jsonBody);
      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
