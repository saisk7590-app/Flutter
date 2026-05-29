import 'package:flutter/material.dart';

import '../../widgets/info_tile_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InfoTileCard(
            icon: Icons.notifications,
            title: "New notification received",
            subtitle: "2 minutes ago",
            showArrow: true,
          ),
          InfoTileCard(
            icon: Icons.download,
            title: "File downloaded",
            subtitle: "10 minutes ago",
            showArrow: true,
          ),
          InfoTileCard(
            icon: Icons.person,
            title: "New friend request",
            subtitle: "30 minutes ago",
            showArrow: true,
          ),
          InfoTileCard(
            icon: Icons.message,
            title: "New message received",
            subtitle: "1 hour ago",
            showArrow: true,
          ),
        ],
      ),
    );
  }
}
