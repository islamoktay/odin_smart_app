import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/home_page/_home_page_exports.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  test(
    "if the LightModel is suitable for remote db",
    () async {
      final jsonMap = jsonDecode(fixture());
      final result = LightModel.fromMap(jsonMap["lights"]);
      expect(result, isA<LightModel>());
    },
  );
}
