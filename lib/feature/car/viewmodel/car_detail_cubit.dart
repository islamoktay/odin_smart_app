import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class CarDetailCubit extends Cubit<String?> {
  CarDetailCubit() : super("");

  final Completer<GoogleMapController> _controller = Completer();
  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  static Future<Set<Marker>> markerAdderMethod(CarModel response) async {
    final Set<Marker> markers = {};
    markers.add(Marker(
      markerId: const MarkerId("1"),
      position: LatLng(response.lat!, response.lon!),
      infoWindow: const InfoWindow(
        title: 'YOUR CAR',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    markers.add(Marker(
      markerId: const MarkerId("2"),
      position: LatLng(response.chargeStations![0].lat!, response.chargeStations![0].lon!),
      infoWindow: InfoWindow(
        title: response.chargeStations![0].name,
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));
    markers.add(Marker(
      markerId: const MarkerId("3"),
      position: LatLng(response.chargeStations![1].lat!, response.chargeStations![1].lon!),
      infoWindow: InfoWindow(
        title: response.chargeStations![1].name,
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));
    markers.add(Marker(
      markerId: const MarkerId("4"),
      position: LatLng(response.chargeStations![2].lat!, response.chargeStations![2].lon!),
      infoWindow: InfoWindow(
        title: response.chargeStations![2].name,
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));
    return markers;
  }
}
