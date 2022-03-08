import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_package_exports.dart';
import '../../../core/_core_exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1000)).then(
      (value) {
        Geolocator.requestPermission();
      },
    );
    LocationService.getCurrentLocation();
    Future.delayed(const Duration(milliseconds: 1600)).then(
      (value) {
        Go.to.page(RouteConstant.CREDENTIAL_VIEW);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.iconLogo),
            const SizedBox(height: 30),
            Image.asset(ImageConstants.textLogo),
          ],
        ),
      ),
    );
  }
}
