import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class CarDetailPage extends StatefulWidget {
  final CarModel carModel;
  const CarDetailPage(this.carModel, {Key? key}) : super(key: key);

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  Set<Marker> markers = {};
  @override
  void initState() {
    compute(CarDetailCubit.markerAdderMethod, widget.carModel).then((value) {
      markers = value;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: PaddingConstants.generalPagePadding,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(5)),
        child: BlocConsumer<CarCubit, GenericState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GenericCompletedItem<CarModel>) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarDetailInfoBody(state),
                  SizedBox(
                    height: 500,
                    width: 400,
                    child: GoogleMap(
                        markers: markers,
                        mapType: MapType.normal,
                        myLocationButtonEnabled: false,
                        onMapCreated: CarDetailCubit().onMapCreated,
                        initialCameraPosition:
                            CameraPosition(target: LatLng(state.response.lat!, state.response.lon!), zoom: 15)),
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
