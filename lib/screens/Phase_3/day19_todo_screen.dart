import 'package:flutter/material.dart';

class Day19TodoScreen extends StatefulWidget {
  const Day19TodoScreen({super.key});

  @override
  State<Day19TodoScreen> createState() => _Day19TodoScreenState();
}

class _Day19TodoScreenState extends State<Day19TodoScreen> {
  final TextEditingController taskController = TextEditingController();

  final List<String> tasks = [];

  void addTask() {
    if (taskController.text.trim().isEmpty) return;

    setState(() {
      tasks.add(taskController.text.trim());
      taskController.clear();
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Task Added Successfully ✅")));
  }

  void deleteTask(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Task"),
          content: const Text("Are you sure you want to delete this task?"),
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
                  tasks.removeAt(index);
                });

                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Task Deleted 🗑️")),
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
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 19 - Todo App")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // ======================
            // TOP ICON
            // ======================
            const Icon(
              Icons.check_circle_outline,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            // ======================
            // TASK INPUT
            // ======================
            TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: "Enter Task",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            // ======================
            // ADD BUTTON
            // ======================
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addTask,
                child: const Text("Add Task"),
              ),
            ),

            const SizedBox(height: 20),

            // ======================
            // TASK COUNT
            // ======================
            Text(
              "Total Tasks: ${tasks.length}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // ======================
            // TASK LIST
            // ======================
            Expanded(
              child: tasks.isEmpty
                  ? const Center(child: Text("No Tasks Added Yet"))
                  : ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(child: Text("${index + 1}")),

                            title: Text(tasks[index]),

                            trailing: IconButton(
                              onPressed: () => deleteTask(index),
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
