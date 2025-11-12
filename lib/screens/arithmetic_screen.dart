import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();
  double? _result;

  void _calculateSum() {
    double num1 = double.tryParse(_firstNumberController.text) ?? 0;
    double num2 = double.tryParse(_secondNumberController.text) ?? 0;

    setState(() {
      _result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child: Column(
        children: [
           Text('Simple Calculator',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 20),

          TextField(
            controller: _firstNumberController,
            decoration: const InputDecoration(
              labelText: 'First Number',
            ),
          ),
           SizedBox(height: 10),

          TextField(
            controller: _secondNumberController,
            decoration: const InputDecoration(
              labelText: 'Second Number',
            ),
          ),
           SizedBox(height: 20),

          ElevatedButton(
            onPressed: _calculateSum,
            child: const Text('Calculate'),
          ),
           SizedBox(height: 20),

            Text(
              'Result: $_result',
              style: const TextStyle(fontSize: 20),
            ),
        ],
      ),
    );
  }
}
