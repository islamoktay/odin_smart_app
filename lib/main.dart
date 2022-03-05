import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/_core_exports.dart';

Future<void> main() async {
  runApp(EasyLocalization(
      path: LocaleConstant.LANG_PATH,
      supportedLocales: LocaleConstant.SUPPORTED_LOCALES,
      child: const MyApp()));
}
