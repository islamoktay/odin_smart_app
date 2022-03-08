// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

class WeatherModel {
  WeatherModel({
    this.location,
    this.current,
  });

  Location? location;
  Current? current;

  factory WeatherModel.fromJson(String str) =>
      WeatherModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WeatherModel.fromMap(Map<String, dynamic> json) => WeatherModel(
        location: json["location"] == null
            ? null
            : Location.fromMap(json["location"]),
        current:
            json["current"] == null ? null : Current.fromMap(json["current"]),
      );

  Map<String, dynamic> toMap() => {
        "location": location == null ? null : location?.toMap(),
        "current": current == null ? null : current?.toMap(),
      };
}

class Current {
  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;

  factory Current.fromJson(String str) => Current.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Current.fromMap(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json["last_updated_epoch"] == null
            ? null
            : json["last_updated_epoch"],
        lastUpdated: json["last_updated"] == null ? null : json["last_updated"],
        tempC: json["temp_c"] == null ? null : json["temp_c"],
        tempF: json["temp_f"] == null ? null : json["temp_f"],
        isDay: json["is_day"] == null ? null : json["is_day"],
        condition: json["condition"] == null
            ? null
            : Condition.fromMap(json["condition"]),
        windMph: json["wind_mph"] == null ? null : json["wind_mph"].toDouble(),
        windKph: json["wind_kph"] == null ? null : json["wind_kph"].toDouble(),
        windDegree: json["wind_degree"] == null ? null : json["wind_degree"],
        windDir: json["wind_dir"] == null ? null : json["wind_dir"],
        pressureMb: json["pressure_mb"] == null ? null : json["pressure_mb"],
        pressureIn:
            json["pressure_in"] == null ? null : json["pressure_in"].toDouble(),
        precipMm: json["precip_mm"] == null ? null : json["precip_mm"],
        precipIn: json["precip_in"] == null ? null : json["precip_in"],
        humidity: json["humidity"] == null ? null : json["humidity"],
        cloud: json["cloud"] == null ? null : json["cloud"],
        feelslikeC:
            json["feelslike_c"] == null ? null : json["feelslike_c"].toDouble(),
        feelslikeF:
            json["feelslike_f"] == null ? null : json["feelslike_f"].toDouble(),
        visKm: json["vis_km"] == null ? null : json["vis_km"],
        visMiles: json["vis_miles"] == null ? null : json["vis_miles"],
        uv: json["uv"] == null ? null : json["uv"],
        gustMph: json["gust_mph"] == null ? null : json["gust_mph"].toDouble(),
        gustKph: json["gust_kph"] == null ? null : json["gust_kph"],
      );

  Map<String, dynamic> toMap() => {
        "last_updated_epoch":
            lastUpdatedEpoch == null ? null : lastUpdatedEpoch,
        "last_updated": lastUpdated == null ? null : lastUpdated,
        "temp_c": tempC == null ? null : tempC,
        "temp_f": tempF == null ? null : tempF,
        "is_day": isDay == null ? null : isDay,
        "condition": condition == null ? null : condition?.toMap(),
        "wind_mph": windMph == null ? null : windMph,
        "wind_kph": windKph == null ? null : windKph,
        "wind_degree": windDegree == null ? null : windDegree,
        "wind_dir": windDir == null ? null : windDir,
        "pressure_mb": pressureMb == null ? null : pressureMb,
        "pressure_in": pressureIn == null ? null : pressureIn,
        "precip_mm": precipMm == null ? null : precipMm,
        "precip_in": precipIn == null ? null : precipIn,
        "humidity": humidity == null ? null : humidity,
        "cloud": cloud == null ? null : cloud,
        "feelslike_c": feelslikeC == null ? null : feelslikeC,
        "feelslike_f": feelslikeF == null ? null : feelslikeF,
        "vis_km": visKm == null ? null : visKm,
        "vis_miles": visMiles == null ? null : visMiles,
        "uv": uv == null ? null : uv,
        "gust_mph": gustMph == null ? null : gustMph,
        "gust_kph": gustKph == null ? null : gustKph,
      };
}

class Condition {
  Condition({
    this.text,
    this.icon,
    this.code,
  });

  String? text;
  String? icon;
  int? code;

  factory Condition.fromJson(String str) => Condition.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Condition.fromMap(Map<String, dynamic> json) => Condition(
        text: json["text"] == null ? null : json["text"],
        icon: json["icon"] == null ? null : json["icon"],
        code: json["code"] == null ? null : json["code"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "icon": icon == null ? null : icon,
        "code": code == null ? null : code,
      };
}

class Location {
  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        name: json["name"] == null ? null : json["name"],
        region: json["region"] == null ? null : json["region"],
        country: json["country"] == null ? null : json["country"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
        tzId: json["tz_id"] == null ? null : json["tz_id"],
        localtimeEpoch:
            json["localtime_epoch"] == null ? null : json["localtime_epoch"],
        localtime: json["localtime"] == null ? null : json["localtime"],
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "region": region == null ? null : region,
        "country": country == null ? null : country,
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
        "tz_id": tzId == null ? null : tzId,
        "localtime_epoch": localtimeEpoch == null ? null : localtimeEpoch,
        "localtime": localtime == null ? null : localtime,
      };
}
