import 'package:flutter/material.dart';

class ArmstrongScreen extends StatefulWidget {
  const ArmstrongScreen({super.key});

  @override
  State<ArmstrongScreen> createState() => _ArmstrongScreenState();
}

class _ArmstrongScreenState extends State<ArmstrongScreen> {
  final TextEditingController numberController = TextEditingController();

  String result = "";

  bool isArmstrong(int num) {
    int sum = 0;
    int temp = num;

    while (temp > 0) {
      int digit = temp % 10;
      sum += digit * digit * digit;
      temp ~/= 10;
    }

    return sum == num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Armstrong Number"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter a number"),
            ),
            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  int num = int.tryParse(numberController.text) ?? 0;

                  setState(() {
                    result = isArmstrong(num)
                        ? "$num is an Armstrong number"
                        : "$num is NOT an Armstrong number";
                  });
                },
                child: const Text("Check Armstrong"),
              ),
            ),
            const SizedBox(height: 16),

            Text(
              result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
