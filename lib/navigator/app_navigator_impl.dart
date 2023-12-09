import 'dart:async';

import 'package:flutter_navigation/navigator/app_navigator.dart';

class AppNavigatorImpl extends AppNavigator {
  @override
  FutureOr<T?>? navigateToScreen<T>({
    required bool clearBackStack,
    required String path,
    Object? arguments,
  }) {
    // TODO: implement navigateToScreen
    throw UnimplementedError();
  }

  @override
  void pop<T>({
    T? result,
  }) {
    // TODO: implement pop
  }
}
