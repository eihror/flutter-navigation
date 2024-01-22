import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/first_page.dart';
import 'package:flutter_navigation/screens/second_page.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class Pages {
  static GoRouter router = GoRouter(
    navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
    routes: [
      GoRoute(
        path: "/",
        name: "first_screen",
        builder: (context, state) => FirstPage(),
      ),
      GoRoute(
        path: "/second",
        name: "second_screen",
        builder: (context, state) => SecondPage(),
      ),
    ],
  );
}
