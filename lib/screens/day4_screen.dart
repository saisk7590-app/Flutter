import 'package:flutter/material.dart';

class Day4Screen extends StatelessWidget {
  const Day4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 4"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Day 4 🎉",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}