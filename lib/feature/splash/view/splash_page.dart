import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/_core_exports.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:easy_localization/easy_localization.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

@override
void initState() async {
  await buildInit();
  Future.delayed(const Duration(milliseconds: 5600))
      .then((value) => Go.to.page(RouteConstant.CREDENTIAL_VIEW));
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<void> buildInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
}
