import 'package:flutter/material.dart';
import 'package:flutter_navigation/di/di.dart';
import 'package:flutter_navigation/route/routes.dart';
import 'package:get_it/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DI.initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
      initialRoute: '/first',
      onGenerateRoute: Pages.generateRoutes,
    );
  }
}
