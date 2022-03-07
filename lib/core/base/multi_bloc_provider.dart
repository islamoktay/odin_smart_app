import 'package:flutter_bloc/flutter_bloc.dart';
import '../../feature/_feature_exports.dart';

List<BlocProvider> multiBlocProvider = [
  BlocProvider<LoginCubit>(create: ((_) => LoginCubit())),
  BlocProvider<SignUpCubit>(create: ((_) => SignUpCubit())),
  BlocProvider<HomePageCubit>(create: ((_) => HomePageCubit())),

  //! Cubits with repositories
  BlocProvider<RemoteControllerCubit>(
      create: ((_) =>
          RemoteControllerCubit(SampleRemoteControllerRepository()))),
  BlocProvider<LightsCubit>(
      create: ((_) => LightsCubit(SampleLightsRepository()))),
];
