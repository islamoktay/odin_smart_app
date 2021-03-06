import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class CameraRepository {
  Future<List<CameraModel>> getInfo();
}

class SampleCameraRepository implements CameraRepository {
  @override
  Future<List<CameraModel>> getInfo() async {
    return await compute(computeFunction, UrlConstant.CAMERA_URL);
  }

  static Future<List<CameraModel>> computeFunction(String message) async {
    final response = await http.get(
      Uri.parse(message),
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(utf8.decode(response.bodyBytes));
      List<CameraModel> responseModel = List<CameraModel>.from(jsonBody.map((model) => CameraModel.fromMap(model)));

      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
