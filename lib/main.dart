import 'package:flutter/material.dart';
import 'core/_core_exports.dart';
import 'core/_package_exports.dart';

Future<void> main() async {
  await buildInit();
  runApp(EasyLocalization(
      path: LocaleConstant.LANG_PATH,
      supportedLocales: LocaleConstant.SUPPORTED_LOCALES,
      child: const MyApp()));
}

Future<void> buildInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
}
