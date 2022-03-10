import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/core/functions/_functions_exports.dart';

void main() {
  group(
    "emailValidator method",
    () {
      test(
        "when emailValidator called, should return true for valid email",
        () async {
          String email = "aaaa@gamil.com";
          var result = emailValidator(email);
          expect(result, true);
        },
      );
      test(
        "when emailValidator called, should return false for invalid email",
        () async {
          String email = "alalalalalalal";
          var result = emailValidator(email);
          expect(result, false);
        },
      );
    },
  );

  group(
    "isSameTextValidator method test",
    () {
      test(
        "when isSameTextValidator called, should return true if texts are same",
        () async {
          String valueOne = "test";
          String valueTwo = "test";
          var result = isSameTextValidator(valueOne, valueTwo);
          expect(result, true);
        },
      );
      test(
        "when isSameTextValidator called, should return false if texts are different",
        () async {
          String valueOne = "tset";
          String valueTwo = "test";
          var result = isSameTextValidator(valueOne, valueTwo);
          expect(result, false);
        },
      );
    },
  );
}
