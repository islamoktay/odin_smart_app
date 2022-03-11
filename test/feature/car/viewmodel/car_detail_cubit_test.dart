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
  late MockGoogleMapController mockGoogleMapController;
  setUp(
    () {
      mockCarDetailCubit = MockCarDetailCubit();
      mockGoogleMapController = MockGoogleMapController();
    },
  );

  test(
    "when onMapCrated called, should return a void Function, so we are testing if it can be called",
    () {
      mockCarDetailCubit.onMapCreated(mockGoogleMapController);
      verify(mockCarDetailCubit.onMapCreated(mockGoogleMapController))
          .called(1);
    },
  );
}
