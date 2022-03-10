// To parse this JSON data, do
//
//     final powerModel = powerModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

class PowerModel {
  PowerModel({
    this.isPower,
  });

  bool? isPower;

  factory PowerModel.fromJson(String str) =>
      PowerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PowerModel.fromMap(Map<String, dynamic> json) => PowerModel(
        isPower: json["isPower"] == null ? null : json["isPower"],
      );

  Map<String, dynamic> toMap() => {
        "isPower": isPower == null ? null : isPower,
      };
}
