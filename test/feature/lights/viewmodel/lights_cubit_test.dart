// ignore_for_file: library_prefixes

import 'package:odin_smart_app/core/_core_exports.dart';
import 'package:odin_smart_app/core/_package_exports.dart';
import 'package:odin_smart_app/feature/home_page/_home_page_exports.dart';

import 'lights_cubit_test.mocks.dart';

@GenerateMocks(
  [LightsCubit],
  customMocks: [
    MockSpec<SampleLightsRepository>(),
  ],
)
void main() {
  late MockSampleLightsRepository mockSampleLightsRepository;
  late SampleLightsRepository sampleLightsRepository;
  setUp(() async {
    mockSampleLightsRepository = MockSampleLightsRepository();
    sampleLightsRepository = SampleLightsRepository();
  });

  test(
    "emits [GenericInitial(),GenericLoading(),GenericCompletedItem<LightModel>()] when successful",
    () async {
      final cubit = MockLightsCubit();
      var result = await sampleLightsRepository.getInfo();
      emitsInOrder([
        GenericInitial(),
        GenericLoading(),
        GenericCompletedItem<LightModel>(result),
      ]);
    },
  );

  test(
    "emits [GenericInitial(),GenericLoading(),GenericError('message', 'statusCode')] when unsuccessful",
    () async {
      when(mockSampleLightsRepository.getInfo())
          .thenThrow(NetworkError('message', 'statusCode'));
      await sampleLightsRepository.getInfo();
      emitsInOrder([
        GenericInitial(),
        GenericLoading(),
        GenericError('message', 'statusCode'),
      ]);
    },
  );
}
