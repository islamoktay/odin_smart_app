import '../../feature/_feature_exports.dart';
import '../_package_exports.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! REMOTE CONTROLLER FEATURE
  sl.registerLazySingleton(() => SampleRemoteControllerDetailRepository());
  sl.registerLazySingleton(() => RemoteControllerDetailPageCubit());
}
