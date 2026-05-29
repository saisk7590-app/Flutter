import 'package:flutter/material.dart';
import 'day4_screen.dart';

class Day3Screen extends StatelessWidget {
  const Day3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 3"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCard(Icons.photo, "Photos", Colors.blue),
              buildCard(Icons.music_note, "Music", Colors.green),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCard(Icons.folder, "Files", Colors.orange),
              buildCard(Icons.videocam, "Videos", Colors.red),
            ],
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Day4Screen(),
                ),
              );
            },
            child: const Text("Go to Day 4"),
          ),
        ],
      ),
    );
  }

  Widget buildCard(IconData icon, String title, Color color) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}