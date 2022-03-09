import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';

import '../../../core/_core_exports.dart';
import '../../_feature_exports.dart';

class LightDetailPage extends StatefulWidget {
  const LightDetailPage({Key? key}) : super(key: key);

  @override
  State<LightDetailPage> createState() => _LightDetailPageState();
}

class _LightDetailPageState extends State<LightDetailPage> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: BlocConsumer<LightsCubit, GenericState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GenericCompletedItem<LightModel>) {
          return ListView.separated(
            padding: PaddingConstants.generalPagePadding,
            itemCount: 4,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 30);
            },
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    AppTextWidget(
                      state.response.ligtsDevices![index].name!,
                      textSize: 24,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: AppTextFormField(
                            hintText: state.response.ligtsDevices![index]
                                        .openTime ==
                                    null
                                ? "Start Time"
                                : "${state.response.ligtsDevices![index].openTime!.substring(0, 2)} : ${state.response.ligtsDevices![index].openTime!.substring(2)}",
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: AppTextFormField(
                              hintText: state.response.ligtsDevices![index]
                                          .closeTime ==
                                      null
                                  ? "End Time"
                                  : "${state.response.ligtsDevices![index].openTime!.substring(0, 2)} : ${state.response.ligtsDevices![index].openTime!.substring(2)}",
                            )),
                        const Icon(
                          Icons.cancel,
                          size: 38,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Slider(
                      value: _value,
                      activeColor: AppColors.purpleColor,
                      inactiveColor: Colors.white,
                      thumbColor: AppColors.purpleColor,
                      onChangeEnd: (value) {
                        print("tatattatatatat");
                        print(value.toStringAsFixed(2));
                      },
                      onChangeStart: (value) {
                        _value = value;
                        setState(() {});
                      },
                      onChanged: (value) {
                        setState(() {});

                        _value = value;
                      },
                    )
                  ],
                ),
              );
            },
          );
        }
        return const SizedBox();
      },
    ));
  }
}
