import 'package:flutter/material.dart';

import '../../widgets/info_tile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
              const SizedBox(height: 20),
              const Text(
                "Sai Kiran",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              const InfoTileCard(
                icon: Icons.email,
                title: "Email",
                subtitle: "sai.kiran@example.com",
              ),
              const InfoTileCard(
                icon: Icons.phone,
                title: "Phone",
                subtitle: "123-456-7890",
              ),
              const InfoTileCard(
                icon: Icons.location_on,
                title: "Location",
                subtitle: "Andhra Pradesh, India",
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
    );
  }
}
