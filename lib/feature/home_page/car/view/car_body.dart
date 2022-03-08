import 'package:flutter/material.dart';
import 'package:odin_smart_app/feature/home_page/car/view/widgets/car_info_body.dart';
import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class CarBody extends StatefulWidget {
  const CarBody({Key? key}) : super(key: key);

  @override
  State<CarBody> createState() => _CarBodyState();
}

class _CarBodyState extends State<CarBody> {
  @override
  void initState() {
    context.read<CarCubit>().getInfo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          showCustomMessenger("Data can not be reached for the Car");
        }
      },
      builder: (context, state) {
        if (state is GenericInitial) {
          return const GridMenuCustomContainer(
              menuName: "CAR",
              upperMenuWidget: Center(
                child: SizedBox(),
              ));
        } else if (state is GenericLoading) {
          return const GridMenuCustomContainer(
              menuName: "CAR",
              upperMenuWidget: Center(
                  child:
                      CircularProgressIndicator(color: AppColors.purpleColor)));
        } else if (state is GenericCompletedItem<CarModel>) {
          return GridMenuCustomContainer(
            menuName: "CAR",
            upperMenuWidget: CarInfoBody(state),
          );
        } else {
          final error = state as GenericError;
          return Center(child: Text("${error.message}\n${error.statusCode}"));
        }
      },
    );
  }
}
