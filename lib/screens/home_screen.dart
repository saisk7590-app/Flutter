import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),

        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Settings Clicked");
            },

            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            const Row(
              children: [
                CircleAvatar(radius: 30, child: Icon(Icons.person, size: 35)),

                SizedBox(width: 15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Sai 👋",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Flutter Developer",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDashboardCard(Icons.photo, "Photos", Colors.blue),

                buildDashboardCard(Icons.music_note, "Music", Colors.green),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDashboardCard(Icons.folder, "Files", Colors.orange),

                buildDashboardCard(Icons.videocam, "Videos", Colors.red),
              ],
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                onPressed: () {
                  debugPrint("Logout Clicked");
                  Navigator.pop(context);
                },

                icon: const Icon(Icons.logout),

                label: const Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardCard(IconData icon, String title, Color color) {
    return Container(
      width: 160,
      height: 140,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 45, color: Colors.white),

          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
