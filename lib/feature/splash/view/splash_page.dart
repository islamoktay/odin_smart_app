import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 5600)).then(
      (value) {
        Go.to.page(RouteConstant.CREDENTIAL_VIEW);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash view"),
      ),
    );
  }
}
