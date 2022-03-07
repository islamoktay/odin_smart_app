import 'package:flutter/material.dart';
import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class LightsBody extends StatefulWidget {
  const LightsBody({Key? key}) : super(key: key);

  @override
  State<LightsBody> createState() => _LightsBodyState();
}

class _LightsBodyState extends State<LightsBody> {
  @override
  void initState() {
    context.read<LightsCubit>().getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LightsCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          showCustomMessenger("Data can not be reached for the lights");
        }
      },
      builder: (context, state) {
        if (state is GenericInitial) {
          return const GridMenuCustomContainer(
            menuName: "LIGTHS",
            upperMenuWidget: SizedBox(),
          );
        } else if (state is GenericLoading) {
          return const GridMenuCustomContainer(
              menuName: "LIGHTS",
              upperMenuWidget:
                  CircularProgressIndicator(color: AppColors.purpleColor));
        } else if (state is GenericCompletedItem) {
          return GridMenuCustomContainer(
            menuName: "LIGHTS",
            upperMenuWidget: ListView.builder(
              shrinkWrap: true,
              itemCount: context.watch<LightsCubit>().itemList.length,
              itemBuilder: ((context, index) {
                return CustomCheckBox(
                  isLightOpen:
                      context.watch<LightsCubit>().itemList[index].isOpen!,
                  onChanged: (value) => context
                      .read<LightsCubit>()
                      .clickButtonMethod(value!, index),
                  name: context.watch<LightsCubit>().itemList[index].name!,
                );
              }),
            ),
          );
        } else {
          final error = state as GenericError;
          return Center(child: Text("${error.message}\n${error.statusCode}"));
        }
      },
    );
  }
}
