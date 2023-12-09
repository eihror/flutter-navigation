import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  String secondPageResult = "";

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("First Page"),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push<String>(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );

                if (result != null) {
                  setState(() {
                    widget.secondPageResult = result;
                  });
                }
              },
              child: const Text("Go To Second Screen"),
            ),
            Visibility(
              visible: widget.secondPageResult.isNotEmpty,
              child: Text(
                "Second Screen result is: ${widget.secondPageResult}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
