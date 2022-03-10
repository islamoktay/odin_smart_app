import 'package:flutter/material.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class CarDetailCubit extends Cubit<String?> {
  CarDetailCubit() : super("");

  final Set<Marker> markers = {};
  final Completer<GoogleMapController> _controller = Completer();
  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Future<bool> markerAdderMethod(CarModel response, Set<Marker> markers) async {
    markers.add(Marker(
      markerId: const MarkerId("1"),
      position: LatLng(response.lat!, response.lon!),
      infoWindow: const InfoWindow(
        title: 'YOUR CAR',
      ),
      icon: await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), ImageConstants.my_location),
    ));
    markers.add(Marker(
      markerId: const MarkerId("2"),
      position: LatLng(response.chargeStations![0].lat!, response.chargeStations![0].lon!),
      infoWindow: InfoWindow(
        title: response.chargeStations![0].name,
      ),
      icon: await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), ImageConstants.station_location),
    ));
    markers.add(Marker(
      markerId: const MarkerId("3"),
      position: LatLng(response.chargeStations![1].lat!, response.chargeStations![1].lon!),
      infoWindow: InfoWindow(
        title: response.chargeStations![1].name,
      ),
      icon: await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), ImageConstants.station_location),
    ));
    return markers.add(Marker(
      markerId: const MarkerId("4"),
      position: LatLng(response.chargeStations![2].lat!, response.chargeStations![2].lon!),
      infoWindow: InfoWindow(
        title: response.chargeStations![2].name,
      ),
      icon: await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), ImageConstants.station_location),
    ));
  }
}
