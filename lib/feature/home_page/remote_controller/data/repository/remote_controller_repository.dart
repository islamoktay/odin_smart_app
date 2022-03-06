import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';
import '../../../../_feature_exports.dart';

abstract class RemoteControllerRepository {
  Future<RemoteControllerModel> getInfo();
}

class SampleRemoteControllerRepository implements RemoteControllerRepository {
  @override
  Future<RemoteControllerModel> getInfo() async {
    final response = await http.get(
      Uri.parse(UrlConstant.REMOTE_CONTROLLER_URL),
    );
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      RemoteControllerModel responseModel =
          RemoteControllerModel.fromMap(jsonBody);
      return responseModel;
    }
    throw NetworkError(response.statusCode.toString(), response.body);
  }
}
