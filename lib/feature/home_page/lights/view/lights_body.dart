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
            menuName: "LIGHTS",
            upperMenuWidget: SizedBox(),
          );
        } else if (state is GenericLoading) {
          return const GridMenuCustomContainer(
            menuName: "LIGHTS",
            upperMenuWidget: Center(
              child: CircularProgressIndicator(
                color: AppColors.purpleColor,
              ),
            ),
          );
        } else if (state is GenericCompletedItem<LightModel>) {
          return GridMenuCustomContainer(
            onTap: () => Go.to.page(RouteConstant.LIGHT_VIEW),
            menuName: "LIGHTS",
            upperMenuWidget: LightsListWidget(state),
          );
        } else {
          final error = state as GenericError;
          return Center(child: Text("${error.message}\n${error.statusCode}"));
        }
      },
    );
  }
}
