import 'package:flutter/material.dart';

import '../../../../../core/_core_exports.dart';
import '../../../../../core/_package_exports.dart';
import '../../../../_feature_exports.dart';

class GridMenuBody extends StatefulWidget {
  const GridMenuBody({Key? key}) : super(key: key);

  @override
  _GridMenuBodyState createState() => _GridMenuBodyState();
}

class _GridMenuBodyState extends State<GridMenuBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, GenericState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: PaddingConstants.generalPagePadding,
          child: GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 35,
              mainAxisSpacing: 40,
            ),
            itemBuilder: (context, index) {
              return context.watch<HomePageCubit>().homePageGridBodyList[index];
            },
          ),
        );
      },
    );
  }
}
