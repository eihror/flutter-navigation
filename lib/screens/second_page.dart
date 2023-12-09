import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  String text = "";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      Navigator.pop<String>(context, widget.text);
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
