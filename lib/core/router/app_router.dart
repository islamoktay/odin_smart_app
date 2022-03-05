import 'package:flutter/cupertino.dart';

import '../_core_exports.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstant.SPLASH_VIEW:
        return CupertinoPageRoute(builder: (_) => Container());
/*       case RouteConstant.ADDRESS_UPDATE_VIEW:
        final ScreenArguments args = routeSettings.arguments as ScreenArguments;

        return CupertinoPageRoute(
          builder: (_) => AddressUpdateView(
            addressList: args.list!,
          ),
        ); */
      default:
        return null;
    }
  }
}
