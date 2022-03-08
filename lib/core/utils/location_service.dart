import '../_package_exports.dart';

class LocationService {
  static double latitude = 0;
  static double longitude = 0;
  static String locationString = "";
  static bool isEnabled = false;

  static Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      latitude = position.latitude;
      longitude = position.longitude;
      locationString =
          locationStringMaker(latitude.toString(), longitude.toString());
      isEnabled = await Geolocator.isLocationServiceEnabled();
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  static String locationStringMaker(String lat, String lon) {
    locationString = [lat, lon].join(",");
    return locationString;
  }
}
