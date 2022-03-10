import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:odin_smart_app/core/shared_widgets/custom_scaffold.dart';
import 'package:odin_smart_app/core/theme/_theme_exports.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class CarDetailPage extends StatefulWidget {
  const CarDetailPage({Key? key}) : super(key: key);

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  final Set<Marker> markers = {};
  final Completer<GoogleMapController> _controller = Completer();
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Future<void> markerAdderMethod(GenericCompletedItem<CarModel> state) async {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {});
    });
    markers.add(Marker(
      markerId: const MarkerId("1"),
      position: LatLng(state.response.lat!, state.response.lon!),
      infoWindow: const InfoWindow(
        title: 'YOUR CAR',
      ),
      icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(), ImageConstants.my_location),
    ));
    markers.add(Marker(
      markerId: const MarkerId("2"),
      position: LatLng(state.response.chargeStations![0].lat!,
          state.response.chargeStations![0].lon!),
      infoWindow: InfoWindow(
        title: state.response.chargeStations![0].name,
      ),
      icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(), ImageConstants.station_location),
    ));
    markers.add(Marker(
      markerId: const MarkerId("3"),
      position: LatLng(state.response.chargeStations![1].lat!,
          state.response.chargeStations![1].lon!),
      infoWindow: InfoWindow(
        title: state.response.chargeStations![1].name,
      ),
      icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(), ImageConstants.station_location),
    ));
    markers.add(Marker(
      markerId: const MarkerId("4"),
      position: LatLng(state.response.chargeStations![2].lat!,
          state.response.chargeStations![2].lon!),
      infoWindow: InfoWindow(
        title: state.response.chargeStations![2].name,
      ),
      icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(), ImageConstants.station_location),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: PaddingConstants.generalPagePadding,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(5)),
        child: BlocConsumer<CarCubit, GenericState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GenericCompletedItem<CarModel>) {
              markerAdderMethod(state);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AppTextWidget(
                      "Battery : %${state.response.battery}",
                      textSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AppTextWidget(
                      "Location : ${state.response.region}/${state.response.city}",
                      textSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Image.asset(ImageConstants.my_location),
                          const SizedBox(width: 10),
                          AppTextWidget(": Car"),
                          const Spacer(),
                          Image.asset(ImageConstants.station_location),
                          const SizedBox(width: 10),
                          AppTextWidget(": Charge Stations"),
                        ],
                      )),
                  const SizedBox(
                    height: 27,
                  ),
                  SizedBox(
                    height: 540,
                    width: 400,
                    child: GoogleMap(
                        markers: markers,
                        mapType: MapType.normal,
                        myLocationButtonEnabled: false,
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                            target: LatLng(
                                state.response.lat!, state.response.lon!),
                            zoom: 15)),
                  )
                ],
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.purpleColor,
              ));
            }
          },
        ),
      ),
    ));
  }
}
