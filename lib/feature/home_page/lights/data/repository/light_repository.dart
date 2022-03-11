import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class LightsRepository {
  Future<LightModel> getInfo();
  Future<LightModel> updateLightInfo(List<bool> list);
  Future<LightModel> updateInfoForAll();
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
  Future<LightModel> updateLightInfo(List<bool> list) async {
    String json =
        '{"ligts_devices":[{"closeTime":"${sl<LightModel>().ligtsDevices?[0].closeTime}","isOpen":${list[0]},"levelOfOpen":${sl<LightModel>().ligtsDevices?[0].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[0].name}","openTime":"${sl<LightModel>().ligtsDevices?[0].openTime}"},{"closeTime":"${sl<LightModel>().ligtsDevices?[1].closeTime}","isOpen":${list[1]},"levelOfOpen":${sl<LightModel>().ligtsDevices?[1].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[1].name}","openTime":"${sl<LightModel>().ligtsDevices?[1].openTime}"},{"closeTime":"${sl<LightModel>().ligtsDevices?[2].closeTime}","isOpen":${list[2]},"levelOfOpen":${sl<LightModel>().ligtsDevices?[2].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[2].name}","openTime":"${sl<LightModel>().ligtsDevices?[2].openTime}"},{"closeTime":"${sl<LightModel>().ligtsDevices?[3].closeTime}","isOpen":${list[3]},"levelOfOpen":${sl<LightModel>().ligtsDevices?[3].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[3].name}","openTime":"${sl<LightModel>().ligtsDevices?[3].openTime}"}]}';
    final response = await http.patch(
      Uri.parse(UrlConstant.LIGHTS_URL),
      body: json,
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      LightModel responseModel = LightModel.fromMap(jsonBody);

      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }

  @override
  Future<LightModel> updateInfoForAll() async {
    String json =
        '{"ligts_devices":[{"closeTime":"${sl<LightModel>().ligtsDevices?[0].closeTime}","isOpen":${sl<LightModel>().ligtsDevices?[0].isOpen},"levelOfOpen":${sl<LightModel>().ligtsDevices?[0].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[0].name}","openTime":"${sl<LightModel>().ligtsDevices?[0].openTime}"},{"closeTime":"${sl<LightModel>().ligtsDevices?[1].closeTime}","isOpen":${sl<LightModel>().ligtsDevices?[1].isOpen},"levelOfOpen":${sl<LightModel>().ligtsDevices?[1].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[1].name}","openTime":"${sl<LightModel>().ligtsDevices?[1].openTime}"},{"closeTime":"${sl<LightModel>().ligtsDevices?[2].closeTime}","isOpen":${sl<LightModel>().ligtsDevices?[2].isOpen},"levelOfOpen":${sl<LightModel>().ligtsDevices?[2].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[2].name}","openTime":"${sl<LightModel>().ligtsDevices?[2].openTime}"},{"closeTime":"${sl<LightModel>().ligtsDevices?[3].closeTime}","isOpen":${sl<LightModel>().ligtsDevices?[3].isOpen},"levelOfOpen":${sl<LightModel>().ligtsDevices?[3].levelOfOpen},"name":"${sl<LightModel>().ligtsDevices?[3].name}","openTime":"${sl<LightModel>().ligtsDevices?[3].openTime}"}]}';
    final response = await http.patch(
      Uri.parse(UrlConstant.LIGHTS_URL),
      body: json,
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      LightModel responseModel = LightModel.fromMap(jsonBody);

      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
