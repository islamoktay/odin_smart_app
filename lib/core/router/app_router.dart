import 'package:flutter/cupertino.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';

import '../_core_exports.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstant.SPLASH_VIEW:
        return CupertinoPageRoute(builder: (_) => const SplashPage());
      case RouteConstant.LOGIN_VIEW:
        return CupertinoPageRoute(builder: (_) => const LoginPage());
      case RouteConstant.HOME_PAGE_VIEW:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      case RouteConstant.SIGNUP_VIEW:
        return CupertinoPageRoute(builder: (_) => const SignUpPage());
      default:
        return null;
    }
  }
}
