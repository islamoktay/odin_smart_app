import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';
import '../../../core/_package_exports.dart';
import '../../_feature_exports.dart';

class CameraListPage extends StatelessWidget {
  const CameraListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: PaddingConstants.generalPagePadding,
      child: BlocConsumer<CameraCubit, GenericState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GenericCompletedList<CameraModel>) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: GestureDetector(
                      onTap: () => Go.to.page(
                        RouteConstant.CAMERA_DETAIL_VIEW,
                        arguments: state.response[index],
                      ),
                      child: AppTextWidget(
                        state.response[index].name!,
                        textSize: 30,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
                itemCount: 4);
          } else {
            return const SizedBox();
          }
        },
      ),
    ));
  }
}
