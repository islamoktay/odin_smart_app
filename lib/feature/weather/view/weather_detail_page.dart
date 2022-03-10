import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/home_page/_home_page_exports.dart';

import '../../../core/_core_exports.dart';

class WeatherDetailPage extends StatelessWidget {
  const WeatherDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: PaddingConstants.generalPagePadding,
      child: Container(
        padding: PaddingConstants.generalPagePadding,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(5)),
        height: MediaQuery.of(context).size.height * .7,
        width: MediaQuery.of(context).size.height,
        child: BlocConsumer<WeatherCubit, GenericState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GenericCompletedItem<WeatherModel>) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.network(
                      "https://" +
                          state.response.current!.condition!.icon!.substring(2),
                      scale: .4,
                    ),
                  ),
                  AppTextWidget(
                    "Region :  ${state.response.location?.region}",
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  AppTextWidget(
                    "City :  ${state.response.location?.name}",
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  AppTextWidget(
                    "Country : ${state.response.location?.country}",
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  AppTextWidget(
                    "Degree : ${state.response.current?.tempC.toString()} °C",
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  AppTextWidget(
                    "Feels like : ${state.response.current?.feelslikeC.toString()} °C",
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  AppTextWidget(
                    "Condition : ${state.response.current?.condition?.text}",
                    textSize: 25,
                  ),
                ],
              );
            } else {
              return const Center(
                  child:
                      CircularProgressIndicator(color: AppColors.purpleColor));
            }
          },
        ),
      ),
    ));
  }
}
