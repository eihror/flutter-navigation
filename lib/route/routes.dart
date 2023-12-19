import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/first_page.dart';
import 'package:flutter_navigation/screens/second_page.dart';

class Pages {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    if (settings.name != null) {
      switch (settings.name) {
        case '/first':
          return MaterialPageRoute<void>(
            builder: (_) => FirstPage(),
            settings: settings,
          );
        case '/second':
          return MaterialPageRoute<void>(
            builder: (_) => SecondPage(),
            settings: settings,
          );
      }
    }

    return MaterialPageRoute<void>(
      builder: (_) => FirstPage(),
      settings: settings,
    );
  }
}
