import 'package:flutter/material.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key}); // IMPORTANT: const added back

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final TextEditingController radiusController = TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter radius"),
            ),

            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double r = double.tryParse(radiusController.text) ?? 0;

                  setState(() {
                    result = 3.14 * r * r;
                  });
                },
                child: const Text("Calculate Area"),
              ),
            ),

            const SizedBox(height: 16),

            Text(
              "Area: $result",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
