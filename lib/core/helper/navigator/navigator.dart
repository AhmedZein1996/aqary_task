import 'package:flutter/material.dart';

import '../../../main.dart';

class AppNavigator {
  static Future<T?> push<T>(Widget page, {RouteSettings? settings}) async {
    return await navigatorKey.currentState?.push<T>(
      MaterialPageRoute(
        builder: (context) => page,
        settings: settings,
      ),
    );
  }

  static Future<T?> pushNamed<T>(String routeName, {dynamic arguments}) async {
    return await navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  static Future<Object?> pushReplacement(Widget page,
      {RouteSettings? settings}) async {
    return await navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => page, settings: settings),
    );
  }

  static Future<Object?> pushReplacementNamed(String routeName,
      {dynamic arguments}) async {
    return await navigatorKey.currentState
        ?.pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<Object?> pushAndClearStack(Widget page,
      {RouteSettings? settings}) async {
    return await navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page, settings: settings),
        (route) => false);
  }

  static Future<Object?> pushNamedAndClearStack(String routeName,
      {dynamic arguments}) async {
    return await navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, arguments: arguments, (route) => false);
  }

  static void pop() {
    if (canPop) navigatorKey.currentState?.pop();
  }

  static bool get canPop {
    return navigatorKey.currentState?.canPop() ?? false;
  }
}
