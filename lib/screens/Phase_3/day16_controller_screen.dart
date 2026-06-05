import 'package:flutter/material.dart';

class Day16ControllerScreen extends StatefulWidget {
  const Day16ControllerScreen({super.key});

  @override
  State<Day16ControllerScreen> createState() => _Day16ControllerScreenState();
}

class _Day16ControllerScreenState extends State<Day16ControllerScreen> {
  final TextEditingController nameController = TextEditingController();

  String userName = "";

  void showName() {
    if (nameController.text.trim().isEmpty) return;

    setState(() {
      userName = nameController.text.trim().toUpperCase();
    });
  }

  void clearData() {
    setState(() {
      userName = "";
      nameController.clear();
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 16 - Hello User")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 80),

            const SizedBox(height: 20),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter Your Name",
                hintText: "Type your name here",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: showName,
                  child: const Text("Show Name"),
                ),

                const SizedBox(width: 15),

                ElevatedButton(
                  onPressed: clearData,
                  child: const Text("Clear"),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Text(
              userName.isEmpty ? "Hello!" : "Hello, $userName!",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
