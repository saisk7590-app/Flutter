import 'package:flutter/material.dart';
import 'note_detail_screen.dart';

class Day23NotesScreen extends StatefulWidget {
  const Day23NotesScreen({super.key});

  @override
  State<Day23NotesScreen> createState() => _Day23NotesScreenState();
}

class _Day23NotesScreenState extends State<Day23NotesScreen> {
  final TextEditingController noteController = TextEditingController();

  final List<String> notes = [];

  void addNote() {
    if (noteController.text.trim().isEmpty) return;

    setState(() {
      notes.add(noteController.text.trim());
      noteController.clear();
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Note Added 📝")));
  }

  void deleteNote(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Note"),
          content: const Text("Are you sure you want to delete this note?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  notes.removeAt(index);
                });

                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Note Deleted 🗑️")),
                );
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 23 - Notes App")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // =========================
            // TOP ICON
            // =========================
            const Icon(Icons.note_alt, size: 80, color: Colors.orange),

            const SizedBox(height: 20),

            // =========================
            // NOTE INPUT
            // =========================
            TextField(
              controller: noteController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Write Your Note",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            // =========================
            // ADD NOTE BUTTON
            // =========================
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addNote,
                child: const Text("Add Note"),
              ),
            ),

            const SizedBox(height: 20),

            // =========================
            // NOTES COUNT
            // =========================
            Text(
              "Total Notes: ${notes.length}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // =========================
            // NOTES LIST
            // =========================
            Expanded(
              child: notes.isEmpty
                  ? const Center(child: Text("No Notes Added Yet"))
                  // =========================
                  // LISTVIEW BUILDER
                  // =========================
                  : ListView.builder(
                      itemCount: notes.length,
                      itemBuilder: (context, index) {
                        final note = notes[index];

                        return Card(
                          margin: const EdgeInsets.only(bottom: 10),

                          child: ListTile(
                            // =========================
                            // NOTE NUMBER
                            // NEW ADDITION
                            // =========================
                            leading: CircleAvatar(child: Text("${index + 1}")),

                            // =========================
                            // NOTE PREVIEW
                            // NEW ADDITION
                            // =========================
                            title: Text("Notes #${index + 1}"),
                            subtitle: Text(
                              note,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            // =========================
                            // OPEN DETAIL SCREEN
                            // NEW ADDITION
                            // MULTIPLE SCREENS
                            // =========================
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => NoteDetailScreen(note: note),
                                ),
                              );
                            },

                            // =========================
                            // DELETE NOTE
                            // =========================
                            trailing: IconButton(
                              onPressed: () => deleteNote(index),
                              icon: const Icon(Icons.delete, color: Colors.red),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
