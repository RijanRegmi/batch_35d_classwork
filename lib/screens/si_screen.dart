import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  double si = 0;

  final _formKey = GlobalKey<FormState>();

  void calculateSI(double p, double r, double t) {
    setState(() {
      si = (p * r * t) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: principalController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Principal",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter principal";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),

              TextFormField(
                controller: rateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Rate",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter rate";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),

              TextFormField(
                controller: timeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Time",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter time";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      calculateSI(
                        double.parse(principalController.text),
                        double.parse(rateController.text),
                        double.parse(timeController.text),
                      );
                    }
                  },
                  child: const Text("Calculate SI"),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                "Simple Interest: $si",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
