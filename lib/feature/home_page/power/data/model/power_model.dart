// To parse this JSON data, do
//
//     final powerModel = powerModelFromMap(jsonString);

// ignore_for_file: prefer_null_aware_operators, prefer_if_null_operators

import 'dart:convert';

class PowerModel {
  PowerModel({
    this.isPower,
    this.refrigirator,
    this.fridge,
    this.television,
    this.lightbulbs,
    this.plugs,
  });

  bool? isPower;
  Fridge? refrigirator;
  Fridge? fridge;
  Fridge? television;
  Fridge? lightbulbs;
  Fridge? plugs;

  factory PowerModel.fromJson(String str) =>
      PowerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PowerModel.fromMap(Map<String, dynamic> json) => PowerModel(
        isPower: json["isPower"] == null ? null : json["isPower"],
        refrigirator: json["refrigirator"] == null
            ? null
            : Fridge.fromMap(json["refrigirator"]),
        fridge: json["fridge"] == null ? null : Fridge.fromMap(json["fridge"]),
        television: json["television"] == null
            ? null
            : Fridge.fromMap(json["television"]),
        lightbulbs: json["lightbulbs"] == null
            ? null
            : Fridge.fromMap(json["lightbulbs"]),
        plugs: json["plugs"] == null ? null : Fridge.fromMap(json["plugs"]),
      );

  Map<String, dynamic> toMap() => {
        "isPower": isPower == null ? null : isPower,
        "refrigirator": refrigirator == null ? null : refrigirator?.toMap(),
        "fridge": fridge == null ? null : fridge?.toMap(),
        "television": television == null ? null : television?.toMap(),
        "lightbulbs": lightbulbs == null ? null : lightbulbs?.toMap(),
        "plugs": plugs == null ? null : plugs?.toMap(),
      };
}

class Fridge {
  Fridge({
    this.isPower,
    this.isMain,
  });

  bool? isPower;
  bool? isMain;

  factory Fridge.fromJson(String str) => Fridge.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Fridge.fromMap(Map<String, dynamic> json) => Fridge(
        isPower: json["isPower"] == null ? null : json["isPower"],
        isMain: json["isMain"] == null ? null : json["isMain"],
      );

  Map<String, dynamic> toMap() => {
        "isPower": isPower == null ? null : isPower,
        "isMain": isMain == null ? null : isMain,
      };
}
