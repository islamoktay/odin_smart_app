import 'package:flutter/material.dart';
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
