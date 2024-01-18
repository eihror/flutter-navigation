import 'package:flutter/material.dart';
import 'package:flutter_navigation/navigator/app_navigator.dart';
import 'package:get_it/get_it.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  String text = "";

  final AppNavigator navigator = GetIt.I<AppNavigator>();

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blueAccent,
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    widget.text = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a text',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (widget.text.isNotEmpty)
                  ? () {
                      widget.navigator.pop<String>(result: widget.text);
                    }
                  : null,
              child: const Text("Go Back with data"),
            ),
          ],
        ),
      ),
    );
  }
}
