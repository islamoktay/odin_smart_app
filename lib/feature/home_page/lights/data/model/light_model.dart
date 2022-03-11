// To parse this JSON data, do
//
//     final lightModel = lightModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

class LightModel {
  LightModel({
    required this.ligtsDevices,
  });

  List<LigtsDevice>? ligtsDevices;

  factory LightModel.fromJson(String str) =>
      LightModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LightModel.fromMap(Map<String, dynamic> json) => LightModel(
        ligtsDevices: List<LigtsDevice>.from(
            json["ligts_devices"].map((x) => LigtsDevice.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "ligts_devices":
            List<dynamic>.from(ligtsDevices!.map((x) => x.toMap())),
      };
}

class LigtsDevice {
  LigtsDevice({
    this.name,
    this.isOpen,
    this.levelOfOpen,
    this.openTime,
    this.closeTime,
  });

  String? name;
  bool? isOpen;
  double? levelOfOpen;
  String? openTime;
  String? closeTime;

  factory LigtsDevice.fromJson(String str) =>
      LigtsDevice.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LigtsDevice.fromMap(Map<String, dynamic> json) => LigtsDevice(
        name: json["name"] == null ? null : json["name"],
        isOpen: json["isOpen"] == null ? null : json["isOpen"],
        levelOfOpen:
            json["levelOfOpen"] == null ? null : json["levelOfOpen"].toDouble(),
        openTime: json["openTime"] == null ? null : json["openTime"],
        closeTime: json["closeTime"] == null ? null : json["closeTime"],
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "isOpen": isOpen == null ? null : isOpen,
        "levelOfOpen": levelOfOpen == null ? null : levelOfOpen,
        "openTime": openTime == null ? null : openTime,
        "closeTime": closeTime == null ? null : closeTime,
      };
}
