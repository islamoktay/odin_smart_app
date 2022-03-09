// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'core/_core_exports.dart';
import 'core/_package_exports.dart';
import 'core/utils/injection_service.dart' as dependencyInjection;

Future<void> main() async {
  await buildInit();
  sl.allReady().then((value) async {
    runApp(EasyLocalization(
        path: LocaleConstant.LANG_PATH,
        supportedLocales: LocaleConstant.SUPPORTED_LOCALES,
        child: const MyApp()));
  });
}

Future<void> buildInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInjection.init();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
}
