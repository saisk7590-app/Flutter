import 'package:flutter/material.dart';

class Day15CounterScreen extends StatefulWidget {
  const Day15CounterScreen({super.key});

  @override
  State<Day15CounterScreen> createState() => _Day15CounterScreenState();
}

class _Day15CounterScreenState extends State<Day15CounterScreen> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrementCounter() {
    setState(() {
      count--;
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 15 - Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter Value", style: TextStyle(fontSize: 22)),

            const SizedBox(height: 20),

            Text(
              "$count",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: count > 0 ? decrementCounter : null,
                  child: const Icon(Icons.remove),
                ),

                const SizedBox(width: 15),

                ElevatedButton(
                  onPressed: resetCounter,
                  child: const Text("Reset"),
                ),

                const SizedBox(width: 15),

                ElevatedButton(
                  onPressed: incrementCounter,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
