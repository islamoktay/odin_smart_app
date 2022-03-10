import 'package:flutter/material.dart';
import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class CameraBody extends StatefulWidget {
  const CameraBody({Key? key}) : super(key: key);

  @override
  State<CameraBody> createState() => _CameraBodyState();
}

class _CameraBodyState extends State<CameraBody> {
  @override
  void initState() {
    context.read<CameraCubit>().getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          showCustomMessenger("Data can not be reached for the Camera");
        }
      },
      builder: (context, state) {
        if (state is GenericInitial) {
          return const GridMenuCustomContainer(
              menuName: "SECURITY",
              upperMenuWidget: Center(
                child: SizedBox(),
              ));
        } else if (state is GenericLoading) {
          return const GridMenuCustomContainer(
              menuName: "SECURITY",
              upperMenuWidget: Center(
                  child:
                      CircularProgressIndicator(color: AppColors.purpleColor)));
        } else if (state is GenericCompletedList<CameraModel>) {
          return GridMenuCustomContainer(
            menuName: "SECURITY",
            upperMenuWidget: CameraListWidget(state),
          );
        } else {
          final error = state as GenericError;
          return Center(child: Text("${error.message}\n${error.statusCode}"));
        }
      },
    );
  }
}
