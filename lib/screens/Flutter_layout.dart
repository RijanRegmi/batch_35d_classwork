import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Icons")),
      body: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Row(
          children: [
            Column(children: [Icon(Icons.call), Text("Call")]),
            Column(children: [Icon(Icons.navigate_next)]),
            Column(),
          ],
        ),
      ),
    );
  }
}
