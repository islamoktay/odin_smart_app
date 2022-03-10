import 'package:flutter/material.dart';

import '../../../core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class CarDetailPage extends StatefulWidget {
  const CarDetailPage({Key? key}) : super(key: key);

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  @override
  void initState() {
    Future.delayed( const Duration(seconds: 3)).then((value) {
      if (!mounted) {
        setState(() {});
      }
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
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(5)),
        child: BlocConsumer<CarCubit, GenericState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GenericCompletedItem<CarModel>) {
              context.read<CarDetailCubit>().markerAdderMethod(state);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarDetailInfoBody(state),
                  SizedBox(
                    height: 540,
                    width: 400,
                    child: GoogleMap(
                        markers: context.watch<CarDetailCubit>().markers,
                        mapType: MapType.normal,
                        myLocationButtonEnabled: false,
                        onMapCreated:
                            context.watch<CarDetailCubit>().onMapCreated,
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
