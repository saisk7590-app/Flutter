import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),

                const SizedBox(height: 20),

                const Text(
                  "Sai Kiran",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),

                const SizedBox(height: 30),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("sai.kiran@example.com"),
                  ),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("123-456-7890"),
                  ),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Location"),
                    subtitle: Text("Andhra Pradesh, India"),
                  ),
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton.icon(
                    onPressed: () {
                      debugPrint("Edit Profile Clicked");
                    },

                    icon: const Icon(Icons.edit),

                    label: const Text("Edit Profile"),
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        (route) => false,
                      );
                    },

                    icon: const Icon(Icons.logout),

                    label: const Text("Logout"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
