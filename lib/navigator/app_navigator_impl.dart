import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_navigation/navigator/app_navigator.dart';

class AppNavigatorImpl extends AppNavigator {
  AppNavigatorImpl({
    required this.navigatorKey,
  });

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  FutureOr<T?>? navigateToScreen<T>({
    required bool clearBackStack,
    required String path,
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil<T>(
      path,
      (_) => !clearBackStack,
      arguments: arguments,
    );
  }

  @override
  void pop<T>({T? result}) {
    navigatorKey.currentState?.pop(result as T);
  }
}
