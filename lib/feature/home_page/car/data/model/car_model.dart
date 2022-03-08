// To parse this JSON data, do
//
//     final carModel = carModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

class CarModel {
  CarModel({
    this.battery,
    this.street,
    this.region,
    this.city,
    this.lat,
    this.lon,
    this.chargeStations,
  });

  int? battery;
  String? street;
  String? region;
  String? city;
  double? lat;
  double? lon;
  List<ChargeStation>? chargeStations;

  factory CarModel.fromJson(String str) => CarModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CarModel.fromMap(Map<String, dynamic> json) => CarModel(
        battery: json["battery"] == null ? null : json["battery"],
        street: json["street"] == null ? null : json["street"],
        region: json["region"] == null ? null : json["region"],
        city: json["city"] == null ? null : json["city"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
        chargeStations: json["charge_stations"] == null
            ? null
            : List<ChargeStation>.from(
                json["charge_stations"].map((x) => ChargeStation.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "battery": battery == null ? null : battery,
        "street": street == null ? null : street,
        "region": region == null ? null : region,
        "city": city == null ? null : city,
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
        "charge_stations": chargeStations == null
            ? null
            : List<dynamic>.from(chargeStations!.map((x) => x.toMap())),
      };
}

class ChargeStation {
  ChargeStation({
    this.name,
    this.lat,
    this.lon,
  });

  String? name;
  double? lat;
  double? lon;

  factory ChargeStation.fromJson(String str) =>
      ChargeStation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChargeStation.fromMap(Map<String, dynamic> json) => ChargeStation(
        name: json["name"] == null ? null : json["name"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
      };
}
