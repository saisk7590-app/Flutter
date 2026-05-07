import 'package:flutter/material.dart';

class Day2Screen extends StatelessWidget {
  const Day2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 2")),
      body: const Center(
        child: Text(
          "Welcome to Day 2 🎉",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}