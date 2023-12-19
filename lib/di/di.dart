import 'package:flutter/cupertino.dart';
import 'package:flutter_navigation/navigator/app_navigator.dart';
import 'package:flutter_navigation/navigator/app_navigator_impl.dart';
import 'package:get_it/get_it.dart';

abstract class DI {
  static void initializeDependencies() {
    GetIt.I.registerLazySingleton<GlobalKey<NavigatorState>>(() => GlobalKey());

    GetIt.I.registerLazySingleton<AppNavigator>(
      () => AppNavigatorImpl(
        navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
      ),
    );
  }
}
