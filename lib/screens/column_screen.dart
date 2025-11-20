import 'package:flutter/material.dart';
import 'row_screen.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // REQUIRED
        crossAxisAlignment: CrossAxisAlignment.center, // REQUIRED
        children: [
          buildButtonSet("Home", Icons.home),
          buildButtonSet("Share", Icons.share),
          buildButtonSet("Route", Icons.route),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RowScreen()),
              );
            },
            child: const Text("Go to Row Screen"),
          ),
        ],
      ),
    );
  }

  Widget buildButtonSet(String label, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        const SizedBox(height: 10),
        buildSameButton(label),
      ],
    );
  }

  Widget buildSameButton(String text) {
    return SizedBox(
      width: 80,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
