import 'package:flutter_bloc/flutter_bloc.dart';
import '../../feature/_feature_exports.dart';

List<BlocProvider> multiBlocProvider = [
  BlocProvider<LoginCubit>(create: ((_) => LoginCubit())),
  BlocProvider<SignUpCubit>(create: ((_) => SignUpCubit())),
];
