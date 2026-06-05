import 'package:flutter/material.dart';

class Day18SnackbarScreen extends StatelessWidget {
  const Day18SnackbarScreen({super.key});

  void showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Success Message ✅"),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void showErrorSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Error Message ❌"),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Item"),
          content: const Text("Are you sure you want to delete this item?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Item Deleted 🗑️"),
                    backgroundColor: Colors.orange,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 18 - Snackbar & AlertDialog")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ==========================
            // ICON ABOVE BUTTONS
            // ==========================
            const Icon(
              Icons.notifications_active,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 30),

            // ==========================
            // SUCCESS BUTTON
            // ==========================
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () => showSuccessSnackbar(context),
                child: const Text("Show Success"),
              ),
            ),

            const SizedBox(height: 15),

            // ==========================
            // ERROR BUTTON
            // ==========================
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () => showErrorSnackbar(context),
                child: const Text("Show Error"),
              ),
            ),

            const SizedBox(height: 15),

            // ==========================
            // DIALOG BUTTON
            // ==========================
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () => showAlert(context),
                child: const Text("Show Dialog"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
