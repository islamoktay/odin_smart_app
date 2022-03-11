import 'package:odin_smart_app/core/_core_exports.dart';
import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';

void main() {
  late CameraModel cameraModel;
  late CameraRepository cameraRepository;
  setUp(
    () {
      cameraModel = CameraModel(name: "Camera 1");
      cameraRepository = SampleCameraRepository();
    },
  );
  group("getInfo method test", () {
    test(
      "when getInfo method is called, should return a list of CameraModel",
      () async {
        List<CameraModel> cameraModelList = List.generate(4, (index) => cameraModel);
        var result = await cameraRepository.getInfo();
        expect(result[0].name, equals(cameraModelList[0].name));
      },
    );

    test(
      "when getInfo method is called, sometimes it might throw NetWorkError",
      () async {
        var networkError = NetworkError("400", "test message");
        when(cameraRepository.getInfo()).thenThrow((_) async => networkError);
        var result = await cameraRepository.getInfo();
        verify(cameraRepository.getInfo());
        expect(result, networkError);
      },
    );
  });
}
