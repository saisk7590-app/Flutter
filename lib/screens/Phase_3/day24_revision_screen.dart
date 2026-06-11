import 'package:flutter/material.dart';

class Day24RevisionScreen extends StatelessWidget {
  const Day24RevisionScreen({super.key});

  Widget buildTopicCard(String day, String topic, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),

      child: ListTile(
        leading: Icon(icon),

        title: Text(day),

        subtitle: Text(topic),

        trailing: const Icon(Icons.check_circle, color: Colors.green),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 24 - Revision")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            const Icon(Icons.school, size: 80, color: Colors.blue),

            const SizedBox(height: 20),

            const Text(
              "Phase 3 Completed",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  buildTopicCard("Day 15", "StatefulWidget", Icons.add_circle),

                  buildTopicCard(
                    "Day 16",
                    "TextEditingController",
                    Icons.text_fields,
                  ),

                  buildTopicCard("Day 17", "Validation", Icons.verified_user),

                  buildTopicCard(
                    "Day 18",
                    "Snackbar & AlertDialog",
                    Icons.notifications,
                  ),

                  buildTopicCard("Day 19", "Todo App", Icons.checklist),

                  buildTopicCard("Day 20", "Dynamic Lists", Icons.list),

                  buildTopicCard("Day 21", "Local State", Icons.toggle_on),

                  buildTopicCard("Day 22", "Theme & Styling", Icons.dark_mode),

                  buildTopicCard(
                    "Day 23",
                    "Advanced Notes App",
                    Icons.note_alt,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
