import 'package:flutter_bloc/flutter_bloc.dart';
import '../../feature/_feature_exports.dart';

List<BlocProvider> multiBlocProvider = [
  //!General Cubits
  BlocProvider<LoginCubit>(create: ((_) => LoginCubit())),
  BlocProvider<SignUpCubit>(create: ((_) => SignUpCubit())),
  BlocProvider<HomePageCubit>(create: ((_) => HomePageCubit())),
  BlocProvider<SettingsCubit>(create: ((_) => SettingsCubit())),
  BlocProvider<CarDetailCubit>(create: ((_) => CarDetailCubit())),

  //! Detail Page Cubits
  BlocProvider<RemoteControllerDetailPageCubit>(
      create: ((_) => RemoteControllerDetailPageCubit())),
  BlocProvider<LevelOfOpenListCubit>(create: ((_) => LevelOfOpenListCubit())),
  BlocProvider<LightDetailPageCubit>(create: ((_) => LightDetailPageCubit())),

  //! Cubits with repositories
  BlocProvider<RemoteControllerCubit>(
      create: ((_) =>
          RemoteControllerCubit(SampleRemoteControllerRepository()))),
  BlocProvider<LightsCubit>(
      create: ((_) => LightsCubit(SampleLightsRepository()))),
  BlocProvider<PowerCubit>(
      create: ((_) => PowerCubit(SamplePowerRepository()))),
  BlocProvider<WeatherCubit>(
      create: ((_) => WeatherCubit(SampleWeatherRepository()))),
  BlocProvider<CarCubit>(create: ((_) => CarCubit(SampleCarRepository()))),
  BlocProvider<CameraCubit>(
      create: ((_) => CameraCubit(SampleCameraRepository()))),
];
