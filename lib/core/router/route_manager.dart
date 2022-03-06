import '../_core_exports.dart';

abstract class PageRouteRepository {
  Future<dynamic> page(String routeName, {Object? arguments});
  Future<dynamic> pageAndReplace(String routeName, {Object? arguments});
  Future<dynamic> pageAndRemoveUntil(String routeName, {Object? arguments});
  dynamic back({Object? arguments});
}

class Go implements PageRouteRepository {
  static Go to = Go._init();
  Go._init();

  @override
  Future<dynamic> page(String routeName, {Object? arguments}) async {
    return await GlobalContextKey.instance.globalKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> pageAndReplace(String routeName, {Object? arguments}) async {
    return await GlobalContextKey.instance.globalKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> pageAndRemoveUntil(String routeName,
      {Object? arguments}) async {
    return await GlobalContextKey.instance.globalKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false,
            arguments: arguments);
  }

  @override
  dynamic back({Object? arguments}) async {
    return GlobalContextKey.instance.globalKey.currentState!.pop(arguments);
  }
}
