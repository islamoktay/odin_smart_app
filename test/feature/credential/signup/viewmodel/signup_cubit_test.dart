import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';

import 'signup_cubit_test.mocks.dart';

@GenerateMocks([SignUpCubit])
void main() {
  late MockSignUpCubit mockSignUpCubit;
  setUp(
    () {
      mockSignUpCubit = MockSignUpCubit();
    },
  );

  test(
    "when signUp method called, should return a void type, so we will test if it can be called",
    () async {
      mockSignUpCubit.signUp();
      verify(mockSignUpCubit.signUp()).called(1);
    },
  );
}
