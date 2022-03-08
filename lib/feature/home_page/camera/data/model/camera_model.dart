// To parse this JSON data, do
//
//     final cameraModel = cameraModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

class CameraModel {
  CameraModel({
    this.name,
    this.url,
    this.isActive,
  });

  String? name;
  String? url;
  bool? isActive;

  factory CameraModel.fromJson(String str) =>
      CameraModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CameraModel.fromMap(Map<String, dynamic> json) => CameraModel(
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
        isActive: json["isActive"] == null ? null : json["isActive"],
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "url": url == null ? null : url,
        "isActive": isActive == null ? null : isActive,
      };
}
