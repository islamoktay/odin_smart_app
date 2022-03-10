// Mocks generated by Mockito 5.1.0 from annotations
// in odin_smart_app/test/feature/car/viewmodel/car_detail_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:typed_data' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:odin_smart_app/core/_package_exports.dart' as _i2;
import 'package:odin_smart_app/feature/_feature_exports.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeLatLngBounds_0 extends _i1.Fake implements _i2.LatLngBounds {}

class _FakeScreenCoordinate_1 extends _i1.Fake implements _i2.ScreenCoordinate {
}

class _FakeLatLng_2 extends _i1.Fake implements _i2.LatLng {}

/// A class which mocks [CarDetailCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockCarDetailCubit extends _i1.Mock implements _i3.CarDetailCubit {
  MockCarDetailCubit() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<_i2.Marker> get markers =>
      (super.noSuchMethod(Invocation.getter(#markers),
          returnValue: <_i2.Marker>{}) as Set<_i2.Marker>);
  @override
  _i4.Stream<String?> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
          returnValue: Stream<String?>.empty()) as _i4.Stream<String?>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void onMapCreated(_i2.GoogleMapController? controller) =>
      super.noSuchMethod(Invocation.method(#onMapCreated, [controller]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<bool> markerAdderMethod(
          _i3.CarModel? response, Set<_i2.Marker>? markers) =>
      (super.noSuchMethod(
          Invocation.method(#markerAdderMethod, [response, markers]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  void emit(String? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void onChange(_i2.Change<String?>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}

/// A class which mocks [CarModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockCarModel extends _i1.Mock implements _i3.CarModel {
  MockCarModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set battery(int? _battery) =>
      super.noSuchMethod(Invocation.setter(#battery, _battery),
          returnValueForMissingStub: null);
  @override
  set street(String? _street) =>
      super.noSuchMethod(Invocation.setter(#street, _street),
          returnValueForMissingStub: null);
  @override
  set region(String? _region) =>
      super.noSuchMethod(Invocation.setter(#region, _region),
          returnValueForMissingStub: null);
  @override
  set city(String? _city) => super.noSuchMethod(Invocation.setter(#city, _city),
      returnValueForMissingStub: null);
  @override
  set lat(double? _lat) => super.noSuchMethod(Invocation.setter(#lat, _lat),
      returnValueForMissingStub: null);
  @override
  set lon(double? _lon) => super.noSuchMethod(Invocation.setter(#lon, _lon),
      returnValueForMissingStub: null);
  @override
  set chargeStations(List<_i3.ChargeStation>? _chargeStations) =>
      super.noSuchMethod(Invocation.setter(#chargeStations, _chargeStations),
          returnValueForMissingStub: null);
  @override
  String toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []), returnValue: '')
          as String);
  @override
  Map<String, dynamic> toMap() =>
      (super.noSuchMethod(Invocation.method(#toMap, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
}

/// A class which mocks [GoogleMapController].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleMapController extends _i1.Mock
    implements _i2.GoogleMapController {
  MockGoogleMapController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get mapId =>
      (super.noSuchMethod(Invocation.getter(#mapId), returnValue: 0) as int);
  @override
  _i4.Future<void> clearTileCache(_i2.TileOverlayId? tileOverlayId) =>
      (super.noSuchMethod(Invocation.method(#clearTileCache, [tileOverlayId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> animateCamera(_i2.CameraUpdate? cameraUpdate) =>
      (super.noSuchMethod(Invocation.method(#animateCamera, [cameraUpdate]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> moveCamera(_i2.CameraUpdate? cameraUpdate) =>
      (super.noSuchMethod(Invocation.method(#moveCamera, [cameraUpdate]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> setMapStyle(String? mapStyle) =>
      (super.noSuchMethod(Invocation.method(#setMapStyle, [mapStyle]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<_i2.LatLngBounds> getVisibleRegion() => (super.noSuchMethod(
          Invocation.method(#getVisibleRegion, []),
          returnValue: Future<_i2.LatLngBounds>.value(_FakeLatLngBounds_0()))
      as _i4.Future<_i2.LatLngBounds>);
  @override
  _i4.Future<_i2.ScreenCoordinate> getScreenCoordinate(_i2.LatLng? latLng) =>
      (super.noSuchMethod(Invocation.method(#getScreenCoordinate, [latLng]),
              returnValue:
                  Future<_i2.ScreenCoordinate>.value(_FakeScreenCoordinate_1()))
          as _i4.Future<_i2.ScreenCoordinate>);
  @override
  _i4.Future<_i2.LatLng> getLatLng(_i2.ScreenCoordinate? screenCoordinate) =>
      (super.noSuchMethod(Invocation.method(#getLatLng, [screenCoordinate]),
              returnValue: Future<_i2.LatLng>.value(_FakeLatLng_2()))
          as _i4.Future<_i2.LatLng>);
  @override
  _i4.Future<void> showMarkerInfoWindow(_i2.MarkerId? markerId) =>
      (super.noSuchMethod(Invocation.method(#showMarkerInfoWindow, [markerId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> hideMarkerInfoWindow(_i2.MarkerId? markerId) =>
      (super.noSuchMethod(Invocation.method(#hideMarkerInfoWindow, [markerId]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<bool> isMarkerInfoWindowShown(_i2.MarkerId? markerId) => (super
      .noSuchMethod(Invocation.method(#isMarkerInfoWindowShown, [markerId]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<double> getZoomLevel() =>
      (super.noSuchMethod(Invocation.method(#getZoomLevel, []),
          returnValue: Future<double>.value(0.0)) as _i4.Future<double>);
  @override
  _i4.Future<_i5.Uint8List?> takeSnapshot() =>
      (super.noSuchMethod(Invocation.method(#takeSnapshot, []),
              returnValue: Future<_i5.Uint8List?>.value())
          as _i4.Future<_i5.Uint8List?>);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}