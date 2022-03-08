import 'package:flutter/material.dart';
import '../../../../core/_core_exports.dart';
import '../../../_feature_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      isBackIcon: false,
      body: GridMenuBody(),
    );
  }
}
