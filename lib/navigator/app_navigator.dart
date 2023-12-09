import 'dart:async';

abstract class AppNavigator {
  void pop<T>({T? result});

  FutureOr<T?>? navigateToScreen<T>({
    required bool clearBackStack,
    required String path,
    Object? arguments,
  });
}
