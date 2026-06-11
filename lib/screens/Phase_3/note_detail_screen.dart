import 'package:flutter/material.dart';

class NoteDetailScreen extends StatelessWidget {
  final String note;

  const NoteDetailScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Note Details")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Note Icon
            const Icon(Icons.note_alt, size: 80, color: Colors.orange),

            const SizedBox(height: 20),

            // Note Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Text(note, style: const TextStyle(fontSize: 18)),
              ),
            ),

            const SizedBox(height: 20),

            // Back Button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back To Notes"),
            ),
          ],
        ),
      ),
    );
  }
}
