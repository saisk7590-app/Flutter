import 'package:flutter/material.dart';
import 'day5_screen.dart';

class Day4Screen extends StatelessWidget {
  const Day4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 4")),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 50, color: Colors.deepPurple),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Sai Kiran",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Flutter Learner 🚀",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Learning Flutter step by step and building beautiful UI layouts.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        debugPrint("Follow clicked");
                      },
                      child: const Text("Follow"),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        debugPrint("Message clicked");
                      },
                      child: const Text("Message"),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Day5Screen(),
                      ),
                    );
                  },
                  child: const Text("Go to Day 5"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
