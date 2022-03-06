// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odin_smart_app/core/_core_exports.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: multiBlocProvider,
      child: MaterialApp(
        navigatorKey: GlobalContextKey.instance.globalKey,
        debugShowCheckedModeBanner: false,
        title: 'Odin Smart App',
        theme: appThemeData[AppTheme.PrimaryTheme],
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
