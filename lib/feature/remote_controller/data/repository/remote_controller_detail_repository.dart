// ignore_for_file: constant_identifier_names
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';

enum StatusCode { SUCCESS, ERROR }

abstract class RemoteControllerDetailRepository {
  Future<StatusCode> updateNumpadInput(String item);
}

class SampleRemoteControllerDetailRepository
    implements RemoteControllerDetailRepository {
  @override
  Future<StatusCode> updateNumpadInput(String item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"$item","ok":false,"up":false,"down":false,"left":false,"right":false}';
    final response = await http.patch(
      Uri.parse(UrlConstant.REMOTE_CONTROLLER_URL),
      body: json,
    );
    switch (response.statusCode) {
      case 200:
        return StatusCode.SUCCESS;

      default:
        return StatusCode.ERROR;
    }
  }
}
