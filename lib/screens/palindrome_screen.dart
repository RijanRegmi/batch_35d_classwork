import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final TextEditingController numberController = TextEditingController();

  String result = "";

  bool isPalindrome(int num) {
    int original = num;
    int reversed = 0;

    while (num > 0) {
      int digit = num % 10;
      reversed = (reversed * 10) + digit;
      num ~/= 10;
    }

    return original == reversed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Number"),
        backgroundColor: Colors.blue,
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
                    result = isPalindrome(num)
                        ? "$num is a Palindrome number"
                        : "$num is NOT a Palindrome number";
                  });
                },
                child: const Text("Check Palindrome"),
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
