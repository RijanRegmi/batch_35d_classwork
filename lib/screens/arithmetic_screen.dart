import 'package:flutter/material.dart';

// Two types widgets
// 1. stateless : josko value kaile pani change hudaina
// 2. stateful : josko value change huncha.
// Kasari? => build method lai rebuild garne

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // int first = 0;
  // int second = 0;
  // controller
  final TextEditingController firstController = TextEditingController(
    text: "100",
  );
  final TextEditingController secondController = TextEditingController(
    text: "200",
  );
  int result = 0;

  //   Special global key for form
  final _formKey = GlobalKey<FormState>();

  void add(int first, int second) {
    setState(() {
      result = first + second;
    });
  }

  void subtract(int first, int second) {
    setState(() {
      result = first - second;
    });
  }

  void multiply(int first, int second) {
    setState(() {
      result = first * second;
    });
  }

  void divide(int first, int second) {
    setState(() {
      result = first * second;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Program"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                //validation
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                //   first = int.tryParse(value) ?? 0;
                // },
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  hintText: "e.g. 12",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              // Invisible box
              SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                //   second = int.tryParse(value) ?? 0;
                // },
                controller: secondController,
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  hintText: "e.g. 12",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter second number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // validation
                    if (_formKey.currentState?.validate() == true) {
                      add(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text("Sum", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),

              //substract
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // validation
                    if (_formKey.currentState?.validate() == true) {
                      subtract(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text("Subtract", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),

              //multiply
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // validation
                    if (_formKey.currentState?.validate() == true) {
                      multiply(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text("Multiply", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),

              //divide
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // validation
                    if (_formKey.currentState?.validate() == true) {
                      divide(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text("Divide", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),

              //result
              Text("Result is : $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
      // Column : Vertical
      // Row : Horizontal
    );
  }
}
