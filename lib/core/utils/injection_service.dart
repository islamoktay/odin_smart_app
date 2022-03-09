import '../../feature/_feature_exports.dart';
import '../_package_exports.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! REMOTE CONTROLLER FEATURE
  sl.registerLazySingleton(() => SampleRemoteControllerDetailRepository());
  sl.registerLazySingleton(() => RemoteControllerDetailPageCubit());

  //! LIGHTS FEATURE
  sl.registerLazySingleton(() => SampleLightsRepository());
  sl.registerLazySingleton<LightsCubit>(() => LightsCubit(sl()));
  sl.registerSingletonAsync<LightModel>(
      () async => await SampleLightsRepository().getInfo());

  //!LIGHT DETAIL PAGE FEATURE
  sl.registerLazySingleton<LightDetailPageCubit>(() => LightDetailPageCubit());
}
