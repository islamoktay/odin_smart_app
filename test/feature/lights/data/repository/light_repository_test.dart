// ignore_for_file: library_prefixes

import 'package:odin_smart_app/core/_core_exports.dart';
import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';
import 'package:odin_smart_app/core/utils/_utils_exports.dart'
    as dependencyInjection;

void main() {
  late SampleLightsRepository lightsRepository;
  late LightModel mockLightModel;
  late LigtsDevice ligtsDevice;
  setUp(
    () {
      lightsRepository = SampleLightsRepository();
      ligtsDevice = LigtsDevice(closeTime: '1111');
      List<LigtsDevice> list =
          List<LigtsDevice>.generate(2, (_) => ligtsDevice);
      mockLightModel = LightModel(ligtsDevices: list);
    },
  );

  test(
    "when getInfo method called, should return a LightModel",
    () async {
      var result = await lightsRepository.getInfo();
      expect(result.ligtsDevices![0].closeTime,
          mockLightModel.ligtsDevices![0].closeTime);
      expect(result, isA<LightModel>());
    },
  );

  test(
    "when updateLightInfo method called, should return a LightModel",
    () async {
      await dependencyInjection.init();
      await dependencyInjection.sl.allReady().then((value) async {
        await lightsRepository.getInfo();
        List<bool> listBool = List<bool>.generate(4, (index) => true);
        var result = await lightsRepository.updateLightInfo(listBool);
        expect(result.ligtsDevices![0].closeTime,
            mockLightModel.ligtsDevices![0].closeTime);
        expect(result, isA<LightModel>());
      });
    },
  );
}
