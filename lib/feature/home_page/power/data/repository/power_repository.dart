import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class PowerRepository {
  Future<PowerModel> getInfo();
  Future<PowerModel> updatePower(List<bool> list);
  Future<PowerModel> updateMain(List<bool> list);
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
  Future<PowerModel> updatePower(List<bool> list) async {
    String json =
        '{"isPower":${list[0]},"refrigirator":{"isPower":${list[1]},"isMain":true},"fridge":{"isPower":${list[2]},"isMain":true},"television":{"isPower":${list[3]},"isMain":true},"lightbulbs":{"isPower":${list[4]},"isMain":true},"plugs":{"isPower":${list[5]},"isMain":true}}';

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

  @override
  Future<PowerModel> updateMain(List<bool> list) async {
    String json =
        '{"isPower":false,"refrigirator":{"isPower":false,"isMain":${list[0]}},"fridge":{"isPower":false,"isMain":${list[1]}},"television":{"isPower":false,"isMain":${list[2]}},"lightbulbs":{"isPower":false,"isMain":${list[3]}},"plugs":{"isPower":false,"isMain":${list[4]}}}';

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
