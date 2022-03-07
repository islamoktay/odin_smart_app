import 'package:odin_smart_app/feature/home_page/_home_page_exports.dart';

import '../_package_exports.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Lights feature
  sl.registerLazySingleton(() => SampleLightsRepository());
  sl.registerLazySingleton(() => LightModel());
  sl.registerLazySingleton(() => LightsCubit(sl()));
}
