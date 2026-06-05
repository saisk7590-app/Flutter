import 'package:flutter/material.dart';
import './add_contact_screen.dart';

class Day20DynamicListScreen extends StatefulWidget {
  const Day20DynamicListScreen({super.key});

  @override
  State<Day20DynamicListScreen> createState() => _Day20DynamicListScreenState();
}

class _Day20DynamicListScreenState extends State<Day20DynamicListScreen> {
  // =========================
  // CONTACTS DATA
  // =========================
  List<Map<String, dynamic>> contacts = [
    {"name": "Sai Kiran", "phone": "9876543210", "isFav": false},
    {"name": "Rahul", "phone": "9123456780", "isFav": false},
    {"name": "Priya", "phone": "9988776655", "isFav": false},
    {"name": "Amit", "phone": "9012345678", "isFav": false},
  ];

  String searchQuery = "";

  // =========================
  // UNDO DELETE SUPPORT
  // =========================
  Map<String, dynamic>? recentlyDeleted;
  int? recentlyDeletedIndex;

  // =========================
  // SORT CONTACTS A-Z
  // =========================
  void sortContacts() {
    setState(() {
      contacts.sort((a, b) => a["name"].compareTo(b["name"]));
    });
  }

  // =========================
  // FAVORITE TOGGLE
  // =========================
  void toggleFav(Map<String, dynamic> contact) {
    setState(() {
      contact["isFav"] = !contact["isFav"];
    });
  }

  // =========================
  // DELETE CONTACT
  // =========================
  void deleteContact(Map<String, dynamic> contact) {
    setState(() {
      recentlyDeleted = contact;
      recentlyDeletedIndex = contacts.indexOf(contact);

      contacts.remove(contact);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${contact["name"]} deleted"),

        action: SnackBarAction(
          label: "UNDO",

          onPressed: () {
            setState(() {
              contacts.insert(recentlyDeletedIndex!, recentlyDeleted!);
            });
          },
        ),
      ),
    );
  }

  // =========================
  // DELETE CONFIRMATION DIALOG
  // =========================
  void showDeleteDialog(Map<String, dynamic> contact) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Delete Contact",
            style: TextStyle(color: Colors.red),
          ),

          content: Text("Are you sure you want to delete ${contact["name"]}?"),

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
                deleteContact(contact);
              },
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // =========================
    // SEARCH FILTER
    // =========================
    final filteredContacts = contacts.where((contact) {
      return contact["name"].toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 20 - Contacts"),

        actions: [
          // =========================
          // SORT BUTTON
          // =========================
          IconButton(
            icon: const Icon(Icons.sort_by_alpha),
            onPressed: sortContacts,
          ),
        ],
      ),

      // =========================
      // ADD CONTACT BUTTON
      // =========================
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),

        onPressed: () async {
          final newContact = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Day20AddContactScreen(),
            ),
          );

          if (newContact != null) {
            setState(() {
              contacts.add(newContact);
            });
          }
        },
      ),

      body: Column(
        children: [
          // =========================
          // SEARCH BAR
          // =========================
          Padding(
            padding: const EdgeInsets.all(12),

            child: TextField(
              decoration: const InputDecoration(
                labelText: "Search Contact",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),

              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,

              itemBuilder: (context, index) {
                final contact = filteredContacts[index];

                // =========================
                // SWIPE TO DELETE
                // =========================
                return Dismissible(
                  key: Key(contact["phone"]),

                  direction: DismissDirection.endToStart,

                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),

                    child: const Icon(Icons.delete, color: Colors.white),
                  ),

                  confirmDismiss: (_) async {
                    return await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Delete Contact",
                            style: TextStyle(color: Colors.red),
                          ),

                          content: Text(
                            "Are you sure you want to delete ${contact["name"]}?",
                          ),

                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: const Text("Cancel"),
                            ),

                            TextButton(
                              onPressed: () => Navigator.pop(context, true),
                              child: const Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },

                  onDismissed: (_) => deleteContact(contact),

                  child: Card(
                    child: ListTile(
                      // =========================
                      // TAP CONTACT
                      // =========================
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Calling ${contact["name"]} 📞"),
                          ),
                        );
                      },

                      // =========================
                      // LONG PRESS DELETE
                      // =========================
                      onLongPress: () => showDeleteDialog(contact),

                      // =========================
                      // CONTACT AVATAR
                      // =========================
                      leading: CircleAvatar(
                        backgroundColor:
                            Colors.primaries[contacts.indexOf(contact) %
                                Colors.primaries.length],

                        child: Text(
                          contact["name"][0].toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // =========================
                      // NAME
                      // =========================
                      title: Text(contact["name"]),

                      // =========================
                      // PHONE + COUNTRY CODE
                      // =========================
                      subtitle: Text(
                        "${contact["countryCode"] ?? "+91"} ${contact["phone"]}",
                      ),

                      // =========================
                      // FAVORITE + CALL BUTTON
                      // =========================
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(
                              contact["isFav"]
                                  ? Icons.favorite
                                  : Icons.favorite_border,

                              color: contact["isFav"]
                                  ? Colors.red
                                  : Colors.grey,
                            ),

                            onPressed: () => toggleFav(contact),
                          ),

                          IconButton(
                            icon: const Icon(Icons.call, color: Colors.green),

                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Dialing ${contact["phone"]}...",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
