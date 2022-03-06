import 'package:flutter/cupertino.dart';
import 'package:odin_smart_app/feature/_feature_exports.dart';

import '../_core_exports.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstant.SPLASH_VIEW:
        return CupertinoPageRoute(builder: (_) => const SplashPage());
      case RouteConstant.HOME_PAGE_VIEW:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      case RouteConstant.CREDENTIAL_VIEW:
        return CupertinoPageRoute(builder: (_) => const CredentialPage());
      default:
        return null;
    }
  }
}
