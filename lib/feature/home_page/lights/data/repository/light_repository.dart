import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class LightsRepository {
  Future<LightModel> getInfo();
  Future<LightModel> updateInfo(List<bool> list);
}

class SampleLightsRepository implements LightsRepository {
  @override
  Future<LightModel> getInfo() async {
    return await compute(computeFunctionForGet, UrlConstant.LIGHTS_URL);
  }

  static Future<LightModel> computeFunctionForGet(String message) async {
    final response = await http.get(
      Uri.parse(message),
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      LightModel responseModel = LightModel.fromMap(jsonBody);
      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }

  @override
  Future<LightModel> updateInfo(List<bool> list) async {
    print("activated");
    print(list.last);
    String json =
        '{"light_bulbs":[{"name":"Light Bulb 1","isOpen":${list[0]},"levelOfOpen":0,"openTime":"2022-03-07T18:00:00+03:00","closeTime":"2022-03-07T18:00:00+03:00"},{"name":"Light Bulb 2","isOpen":${list[1]},"levelOfOpen":0,"openTime":"2022-03-07T18:00:00+03:00","closeTime":"2022-03-07T18:00:00+03:00"}],"curtains":[{"name":"Curtain 1","isOpen":${list[2]},"levelOfOpen":0,"openTime":"2022-03-07T18:00:00+03:00","closeTime":"2022-03-07T18:00:00+03:00"},{"name":"Curtain 2","isOpen":${list[3]},"levelOfOpen":0,"openTime":"2022-03-07T18:00:00+03:00","closeTime":"2022-03-07T18:00:00+03:00"}]}';

    final response = await http.patch(
      Uri.parse(UrlConstant.LIGHTS_URL),
      body: json,
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      LightModel responseModel = LightModel.fromMap(jsonBody);
      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
