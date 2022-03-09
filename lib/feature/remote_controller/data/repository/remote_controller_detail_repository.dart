// ignore_for_file: constant_identifier_names
import 'package:http/http.dart' as http;
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../../../core/_core_exports.dart';

enum StatusCode { SUCCESS, ERROR }

abstract class RemoteControllerDetailRepository {
  Future<StatusCode> updateNumpadInput(String item);
  Future<StatusCode> updateNetflix(bool item);
  Future<StatusCode> updatYoutube(bool item);
  Future<StatusCode> updateHomeButton(bool item);
  Future<StatusCode> updateExitButton(bool item);
  Future<StatusCode> updateBackButton(bool item);
  Future<StatusCode> updateOkButton(bool item);
  Future<StatusCode> updateUpButton(bool item);
  Future<StatusCode> updateDownButton(bool item);
  Future<StatusCode> updateLeftButton(bool item);
  Future<StatusCode> updateRightButton(bool item);
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

  @override
  Future<StatusCode> updateNetflix(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":$item,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"","ok":false,"up":false,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updatYoutube(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":$item,"home":false,"exit":false,"back":false,"numpad_input":"","ok":false,"up":false,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateHomeButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":$item,"exit":false,"back":false,"numpad_input":"","ok":false,"up":false,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateExitButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":$item,"back":false,"numpad_input":"","ok":false,"up":false,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateBackButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":$item,"numpad_input":"","ok":false,"up":false,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateOkButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"","ok":$item,"up":false,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateUpButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"","ok":false,"up":$item,"down":false,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateDownButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"","ok":false,"up":false,"down":$item,"left":false,"right":false}';
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

  @override
  Future<StatusCode> updateLeftButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"","ok":false,"up":false,"down":false,"left":$item,"right":false}';
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

  @override
  Future<StatusCode> updateRightButton(bool item) async {
    String json =
        '{"tv_channel":"HBO","tv_program":"Game Of Thrones","netflix":false,"youtube":false,"home":false,"exit":false,"back":false,"numpad_input":"","ok":false,"up":false,"down":false,"left":false,"right":$item}';
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
