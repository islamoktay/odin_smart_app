import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/_core_exports.dart';

Future<void> main() async {
  await buildInit();
  runApp(const MyApp());
}

Future<void> buildInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
