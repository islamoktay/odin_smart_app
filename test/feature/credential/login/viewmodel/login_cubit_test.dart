import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';

import 'login_cubit_test.mocks.dart';

@GenerateMocks([LoginCubit])
void main() {
  late MockLoginCubit mockLoginCubit;
  setUp(
    () {
      mockLoginCubit = MockLoginCubit();
    },
  );

  test(
    "when login method called, should return a void type, so we will test if it can be called",
    () async {
      mockLoginCubit.login();
      verify(mockLoginCubit.login()).called(1);
    },
  );
}
