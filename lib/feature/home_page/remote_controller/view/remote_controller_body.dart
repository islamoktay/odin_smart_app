import 'package:flutter/material.dart';

import '../../../../core/_core_exports.dart';
import '../../../../core/_package_exports.dart';
import '../../../_feature_exports.dart';

class RemoteControllerBody extends StatefulWidget {
  const RemoteControllerBody({Key? key}) : super(key: key);

  @override
  _RemoteControllerBodyState createState() => _RemoteControllerBodyState();
}

class _RemoteControllerBodyState extends State<RemoteControllerBody> {
  @override
  void initState() {
    context.read<RemoteControllerCubit>().getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RemoteControllerCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericError) {
          showCustomMessenger("Data can not be reached for the TV");
        }
      },
      builder: (context, state) {
        if (state is GenericInitial) {
          return Container(color: Colors.red);
        } else if (state is GenericLoading) {
          return const CircularProgressIndicator();
        } else if (state is GenericCompletedItem) {
          return Container(
            height: 150,
            width: 150,
            color: AppColors.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Now Playing..."),
                Text(
                  state.response.tvProgram,
                  style: AppTextStyles.bodyTextStyleWhite,
                ),
                const Text("Now Playing..."),
                const Divider(),
                const Text("TV"),
              ],
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
