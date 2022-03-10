import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';

import 'car_detail_cubit_test.mocks.dart';

@GenerateMocks([
  CarDetailCubit
], customMocks: [
  MockSpec<CarModel>(),
  MockSpec<GoogleMapController>(),
])
void main() {
  late MockCarDetailCubit mockCarDetailCubit;
  late MockCarModel mockCarModel;
  late MockGoogleMapController mockGoogleMapController;
  setUp(
    () {
      mockCarDetailCubit = MockCarDetailCubit();
      mockCarModel = MockCarModel();
      mockGoogleMapController = MockGoogleMapController();
    },
  );

  test(
    "when markerAdderMethod called, should add marker to markers' set",
    () async {
      final Set<Marker> markers = {};
      when(mockCarDetailCubit.markerAdderMethod(mockCarModel, markers)).thenAnswer((realInvocation) async => true);
      var result = await mockCarDetailCubit.markerAdderMethod(mockCarModel, markers);
      verify(await mockCarDetailCubit.markerAdderMethod(mockCarModel, markers)).called(1);
      expect(result, true);
    },
  );

  test(
    "when onMapCrated called, should return a void Function, so we are testing if it can be called",
    () {
      mockCarDetailCubit.onMapCreated(mockGoogleMapController);
      verify(mockCarDetailCubit.onMapCreated(mockGoogleMapController)).called(1);
    },
  );
}
