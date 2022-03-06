// To parse this JSON data, do
//
//     final remoteControllerModel = remoteControllerModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

class RemoteControllerModel {
  RemoteControllerModel({
    this.tvChannel,
    this.tvProgram,
    this.netflix,
    this.youtube,
    this.home,
    this.exit,
    this.back,
    this.numpadInput,
    this.offset,
    this.ok,
    this.up,
    this.down,
    this.left,
    this.right,
  });

  String? tvChannel;
  String? tvProgram;
  bool? netflix;
  bool? youtube;
  bool? home;
  bool? exit;
  bool? back;
  String? numpadInput;
  Offset? offset;
  bool? ok;
  bool? up;
  bool? down;
  bool? left;
  bool? right;

  factory RemoteControllerModel.fromJson(String str) =>
      RemoteControllerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RemoteControllerModel.fromMap(Map<String, dynamic> json) =>
      RemoteControllerModel(
        tvChannel: json["tv_channel"] == null ? null : json["tv_channel"],
        tvProgram: json["tv_program"] == null ? null : json["tv_program"],
        netflix: json["netflix"] == null ? null : json["netflix"],
        youtube: json["youtube"] == null ? null : json["youtube"],
        home: json["home"] == null ? null : json["home"],
        exit: json["exit"] == null ? null : json["exit"],
        back: json["back"] == null ? null : json["back"],
        numpadInput: json["numpad_input"] == null ? null : json["numpad_input"],
        offset: json["offset"] == null ? null : Offset.fromMap(json["offset"]),
        ok: json["ok"] == null ? null : json["ok"],
        up: json["up"] == null ? null : json["up"],
        down: json["down"] == null ? null : json["down"],
        left: json["left"] == null ? null : json["left"],
        right: json["right"] == null ? null : json["right"],
      );

  Map<String, dynamic> toMap() => {
        "tv_channel": tvChannel == null ? null : tvChannel,
        "tv_program": tvProgram == null ? null : tvProgram,
        "netflix": netflix == null ? null : netflix,
        "youtube": youtube == null ? null : youtube,
        "home": home == null ? null : home,
        "exit": exit == null ? null : exit,
        "back": back == null ? null : back,
        "numpad_input": numpadInput == null ? null : numpadInput,
        "offset": offset == null ? null : offset?.toMap(),
        "ok": ok == null ? null : ok,
        "up": up == null ? null : up,
        "down": down == null ? null : down,
        "left": left == null ? null : left,
        "right": right == null ? null : right,
      };
}

class Offset {
  Offset({
    this.x,
    this.y,
  });

  double? x;
  double? y;

  factory Offset.fromJson(String str) => Offset.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Offset.fromMap(Map<String, dynamic> json) => Offset(
        x: json["x"] == null ? null : json["x"],
        y: json["y"] == null ? null : json["y"],
      );

  Map<String, dynamic> toMap() => {
        "x": x == null ? null : x,
        "y": y == null ? null : y,
      };
}
