// To parse this JSON data, do
//
//     final lightModel = lightModelFromMap(jsonString);

// ignore_for_file: prefer_null_aware_operators, prefer_if_null_operators

import 'dart:convert';

class LightModel {
  LightModel({
    this.lightBulbs,
    this.curtains,
  });

  List<Curtain>? lightBulbs;
  List<Curtain>? curtains;

  factory LightModel.fromJson(String str) =>
      LightModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LightModel.fromMap(Map<String, dynamic> json) => LightModel(
        lightBulbs: json["light_bulbs"] == null
            ? null
            : List<Curtain>.from(
                json["light_bulbs"].map((x) => Curtain.fromMap(x))),
        curtains: json["curtains"] == null
            ? null
            : List<Curtain>.from(
                json["curtains"].map((x) => Curtain.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "light_bulbs": lightBulbs == null
            ? null
            : List<dynamic>.from(lightBulbs!.map((x) => x.toMap())),
        "curtains": curtains == null
            ? null
            : List<dynamic>.from(curtains!.map((x) => x.toMap())),
      };
}

class Curtain {
  Curtain({
    this.name,
    this.isOpen,
    this.levelOfOpen,
    this.openTime,
    this.closeTime,
  });

  String? name;
  bool? isOpen;
  int? levelOfOpen;
  DateTime? openTime;
  DateTime? closeTime;

  factory Curtain.fromJson(String str) => Curtain.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Curtain.fromMap(Map<String, dynamic> json) => Curtain(
        name: json["name"] == null ? null : json["name"],
        isOpen: json["isOpen"] == null ? null : json["isOpen"],
        levelOfOpen: json["levelOfOpen"] == null ? null : json["levelOfOpen"],
        openTime:
            json["openTime"] == null ? null : DateTime.parse(json["openTime"]),
        closeTime: json["closeTime"] == null
            ? null
            : DateTime.parse(json["closeTime"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "isOpen": isOpen == null ? null : isOpen,
        "levelOfOpen": levelOfOpen == null ? null : levelOfOpen,
        "openTime": openTime == null ? null : openTime?.toIso8601String(),
        "closeTime": closeTime == null ? null : closeTime?.toIso8601String(),
      };
}
