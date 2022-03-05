// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../_core_exports.dart';

void showCustomMessenger(String content) {
  ScaffoldMessenger.of(GlobalContextKey.instance.globalKey.currentContext!)
      .showSnackBar(
    SnackBar(
      margin: const EdgeInsets.only(bottom: 64),
      backgroundColor: Colors.transparent,
      content: Container(
        height: 20,
        width: 100,
        color: Colors.grey,
        child: Text(content),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    ),
  );
}
