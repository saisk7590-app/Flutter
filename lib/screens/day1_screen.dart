import 'package:flutter/material.dart';
import 'day2_screen.dart';

class Day1Screen extends StatelessWidget {
  const Day1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome Sai 👋",
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // 🔘 Dummy Button
            ElevatedButton(
              onPressed: () {
                print("Button clicked");
              },
              child: const Text("Click Me"),
            ),

            const SizedBox(height: 15),

            // 🚀 Navigation Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Day2Screen(),
                  ),
                );
              },
              child: const Text("Go to Day 2"),
            ),
          ],
        ),
      ),
    );
  }
}