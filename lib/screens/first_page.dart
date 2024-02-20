import 'package:flutter/material.dart';
import 'package:flutter_navigation/navigator/app_navigator.dart';
import 'package:get_it/get_it.dart';
import 'package:signals/signals_flutter.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});


  final AppNavigator navigator = GetIt.I<AppNavigator>();

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  final secondPageResult = signal("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await widget.navigator
                    .navigateToScreen(name: "second_screen");

                if (result != null) {
                    secondPageResult.value = result;
                }
              },
              child: const Text("Go To Second Screen"),
            ),
            Watch((context) {
              final result = secondPageResult.watch(context);
              return Visibility(
                visible: result.isNotEmpty,
                child: Text(
                  "Second Screen result is: $result",
                ),
              );
            })

          ],
        ),
      ),
    );
  }
}
