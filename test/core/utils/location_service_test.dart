import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/core/utils/location_service.dart';

void main() {
  test(
    "when locationStringMaker method called, should return joined text",
    () async {
      String lat = "12.12";
      String lon = "13.13";
      var result = LocationService.locationStringMaker(lat, lon);
      expect(result, "12.12,13.13");
    },
  );
}
