import 'package:flutter/material.dart';

import '../../widgets/info_tile_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            InfoTileCard(
              icon: Icons.dark_mode,
              title: "Theme",
              subtitle: "Light mode",
              showArrow: true,
            ),
            InfoTileCard(
              icon: Icons.notifications_active,
              title: "Notifications",
              subtitle: "Enabled",
              showArrow: true,
            ),
            InfoTileCard(
              icon: Icons.info,
              title: "About",
              subtitle: "Phase 2 Flutter practice app",
              showArrow: true,
            ),
          ],
        ),
      ),
    );
  }
}
