import 'package:flutter/material.dart';
import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class PowerBody extends StatefulWidget {
  const PowerBody({Key? key}) : super(key: key);

  @override
  State<PowerBody> createState() => _PowerBodyState();
}

class _PowerBodyState extends State<PowerBody> {
  @override
  void initState() {
    context.read<PowerCubit>().getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PowerCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          showCustomMessenger("Data can not be reached for the lights");
        }
      },
      builder: (context, state) {
        if (state is GenericInitial) {
          return const GridMenuCustomContainer(
            menuName: "POWER",
            upperMenuWidget: SizedBox(),
          );
        } else if (state is GenericLoading) {
          return const GridMenuCustomContainer(
              menuName: "POWER",
              upperMenuWidget: Center(
                  child:
                      CircularProgressIndicator(color: AppColors.purpleColor)));
        } else if (state is GenericCompletedItem) {
          return GridMenuCustomContainer(
            menuName: "POWER",
            upperMenuWidget: GestureDetector(
              onTap: () => context.read<PowerCubit>().clickIconMethod(0),
              child: Center(
                child: Icon(
                  Icons.power_settings_new,
                  color: state.response.isPower
                      ? Colors.greenAccent
                      : Colors.redAccent,
                  size: 85,
                ),
              ),
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
