import 'package:flutter/material.dart';

class InfoTileCard extends StatelessWidget {
  const InfoTileCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.showArrow = false,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: showArrow ? const Icon(Icons.arrow_forward_ios) : null,
      ),
    );
  }
}
