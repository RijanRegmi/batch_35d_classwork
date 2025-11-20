import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Screen")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // REQUIRED
          crossAxisAlignment: CrossAxisAlignment.center, // REQUIRED
          children: [
            buildButtonSet("Home", Icons.home),
            buildButtonSet("Share", Icons.share),
            buildButtonSet("Route", Icons.route),
          ],
        ),
      ),
    );
  }

  Widget buildButtonSet(String label, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: Colors.pink),
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
          backgroundColor: Colors.pink,
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
