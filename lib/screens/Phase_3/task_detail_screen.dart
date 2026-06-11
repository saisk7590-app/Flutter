import 'package:flutter/material.dart';

class TaskDetailScreen extends StatefulWidget {
  final Map<String, dynamic> task;
  final int index;
  final Function(Map<String, dynamic>) onUpdate;

  const TaskDetailScreen({
    super.key,
    required this.task,
    required this.index,
    required this.onUpdate,
  });

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.task["title"]);
  }

  void saveChanges() {
    final updatedTask = {
      "title": controller.text,
      "isDone": widget.task["isDone"],
    };

    widget.onUpdate(updatedTask);

    Navigator.pop(context);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Task Updated ✏️")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Details")),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(Icons.edit, size: 80),

            const SizedBox(height: 20),

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Edit Task",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveChanges,
              child: const Text("Save Changes"),
            ),
          ],
        ),
      ),
    );
  }
}
