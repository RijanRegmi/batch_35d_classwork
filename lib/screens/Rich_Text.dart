import 'package:flutter/material.dart';

class RichTextScreen extends StatefulWidget {
  const RichTextScreen({super.key});

  @override
  State<RichTextScreen> createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),

      body: RichText(
        text: const TextSpan(
          text: "Hello",
          style: TextStyle(color: Colors.black, fontSize: 30),
          children: <TextSpan>[
            TextSpan(
              text: 'bold',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            TextSpan(text: 'world!'),
          ],
        ),
      ),
    );
  }
}
