import 'package:flutter/material.dart';
import 'task_detail_screen.dart';

class SmartTaskManagerScreen extends StatefulWidget {
  const SmartTaskManagerScreen({super.key});

  @override
  State<SmartTaskManagerScreen> createState() => _SmartTaskManagerScreenState();
}

class _SmartTaskManagerScreenState extends State<SmartTaskManagerScreen> {
  final TextEditingController taskController = TextEditingController();

  List<Map<String, dynamic>> tasks = [];

  // ADD TASK
  void addTask() {
    if (taskController.text.trim().isEmpty) return;

    setState(() {
      tasks.add({"title": taskController.text.trim(), "isDone": false});
      taskController.clear();
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Task Added ✅")));
  }

  // TOGGLE COMPLETE
  void toggleTask(int index) {
    setState(() {
      tasks[index]["isDone"] = !tasks[index]["isDone"];
    });
  }

  // DELETE TASK
  void deleteTask(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Task"),
          content: const Text("Are you sure?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
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
      appBar: AppBar(title: const Text("Smart Task Manager")),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(Icons.task, size: 80, color: Colors.blue),

            const SizedBox(height: 20),

            // INPUT
            TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: "Enter Task",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(onPressed: addTask, child: const Text("Add Task")),

            const SizedBox(height: 10),

            Text(
              "Total Tasks: ${tasks.length}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: tasks.isEmpty
                  ? const Center(child: Text("No Tasks Yet"))
                  : ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        final task = tasks[index];

                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => TaskDetailScreen(
                                    task: task,
                                    index: index,
                                    onUpdate: (updatedTask) {
                                      setState(() {
                                        tasks[index] = updatedTask;
                                      });
                                    },
                                  ),
                                ),
                              );
                            },

                            leading: Checkbox(
                              value: task["isDone"],
                              onChanged: (_) => toggleTask(index),
                            ),

                            title: Text(
                              task["title"],
                              style: TextStyle(
                                decoration: task["isDone"]
                                    ? TextDecoration.lineThrough
                                    : null,
                              ),
                            ),

                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => deleteTask(index),
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
