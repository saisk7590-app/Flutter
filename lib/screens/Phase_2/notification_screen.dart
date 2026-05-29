import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),

      body: ListView(
        padding: const EdgeInsets.all(15),

        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("New notification received"),
              subtitle: Text("2 minutes ago"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.download),
              title: Text("File downloaded"),
              subtitle: Text("10 minutes ago"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("New friend request"),
              subtitle: Text("30 minutes ago"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text("New message received"),
              subtitle: Text("1 hour ago"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
