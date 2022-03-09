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
  @override
  void initState() {
    context
        .read<LevelOfOpenListCubit>()
        .setList(sl<LightsCubit>().levelOfOpenList);
    super.initState();
  }

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
                      state.response.ligtsDevices[index].name!,
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
                            controller: sl<LightDetailPageCubit>()
                                .controllerDecider(index)[0],
                            hintText: sl<LightDetailPageCubit>()
                                .generateHintTextForOpenTime(state, index),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: AppTextFormField(
                              controller: sl<LightDetailPageCubit>()
                                  .controllerDecider(index)[1],
                              hintText: sl<LightDetailPageCubit>()
                                  .generateHintTextForCloseTime(state, index),
                            )),
                        GestureDetector(
                          onTap: () => context
                              .read<LightDetailPageCubit>()
                              .onApplyButtonPressed(index),
                          child: const Icon(
                            Icons.check_circle,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context
                                .read<LightDetailPageCubit>()
                                .onCancelButtonPressed(index, state);
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.cancel,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    BlocConsumer<LevelOfOpenListCubit, List<double>>(
                      listener: (context, state) {},
                      builder: (context, stateLevel) {
                        return Slider(
                          value: stateLevel[index],
                          activeColor: AppColors.purpleColor,
                          inactiveColor: Colors.white,
                          thumbColor: AppColors.purpleColor,
                          onChangeEnd: (value) {
                            sl<LightModel>().ligtsDevices[index].levelOfOpen =
                                double.parse(value.toStringAsFixed(2));
                            sl<SampleLightsRepository>().updateInfoForAll();
                          },
                          onChangeStart: (value) {
                            stateLevel[index] = value;
                            setState(() {});
                          },
                          onChanged: (value) {
                            stateLevel[index] = value;
                            setState(() {});
                          },
                        );
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
