import 'package:flutter/material.dart';

import '../Phase_1/day1_screen.dart';
import '../Phase_1/day2_screen.dart';
import '../Phase_1/day3_screen.dart';
import '../Phase_1/day4_screen.dart';
import '../Phase_1/day5_screen.dart';

class Phase1Screen extends StatelessWidget {
  const Phase1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final days = [
      ('Day 1', const Day1Screen()),
      ('Day 2', const Day2Screen()),
      ('Day 3', const Day3Screen()),
      ('Day 4', const Day4Screen()),
      ('Day 5', const Day5Screen()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Phase 1 Learning')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Phase 1',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tap a day chip to open the matching screen.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: days
                  .map(
                    (day) => ActionChip(
                      label: Text(day.$1),
                      avatar: const Icon(Icons.play_arrow, size: 18),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => day.$2),
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: const Icon(Icons.library_books),
                title: const Text('Phase 1 overview'),
                subtitle: const Text(
                  'Explore Day 1 to Day 5 screens from one place.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
