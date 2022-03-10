import 'package:flutter/material.dart';
import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class WeatherBody extends StatefulWidget {
  const WeatherBody({Key? key}) : super(key: key);

  @override
  State<WeatherBody> createState() => _WeatherBodyState();
}

class _WeatherBodyState extends State<WeatherBody> {
  @override
  void initState() {
    if (LocationService.isEnabled) {
      context.read<WeatherCubit>().getInfo(LocationService.locationString);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          showCustomMessenger("Data can not be reached for the weather");
        }
      },
      builder: (context, state) {
        if (state is GenericInitial) {
          return const GridMenuCustomContainer(
              menuName: "WEATHER",
              upperMenuWidget: Center(
                child: GetWeatherButton(),
              ));
        } else if (state is GenericLoading) {
          return const GridMenuCustomContainer(
              menuName: "WEATHER",
              upperMenuWidget: Center(
                  child:
                      CircularProgressIndicator(color: AppColors.purpleColor)));
        } else if (state is GenericCompletedItem) {
          return GridMenuCustomContainer(
            menuName: "WEATHER",
            onTap: () => Go.to.page(RouteConstant.WEATHER_DETAIL_VIEW),
            upperMenuWidget: LocationService.isEnabled
                ? WeatherDataBody(state)
                : const Center(
                    child: GetWeatherButton(),
                  ),
          );
        } else {
          return const GridMenuCustomContainer(
            menuName: "WEATHER",
            upperMenuWidget: Center(
              child: GetWeatherButton(),
            ),
          );
        }
      },
    );
  }
}
