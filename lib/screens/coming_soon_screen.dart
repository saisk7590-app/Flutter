import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  final String day;
  final String title;

  const ComingSoonScreen({super.key, required this.day, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(day)),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Icon(Icons.construction, size: 80),

            const SizedBox(height: 20),

            Text(
              day,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            const Text(
              "Coming Soon...",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
