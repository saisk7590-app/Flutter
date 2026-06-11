import 'package:flutter/material.dart';

class Day22ThemeScreen extends StatefulWidget {
  const Day22ThemeScreen({super.key});

  @override
  State<Day22ThemeScreen> createState() => _Day22ThemeScreenState();
}

class _Day22ThemeScreenState extends State<Day22ThemeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // =========================
      // LIGHT THEME
      // =========================
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),

      // =========================
      // DARK THEME
      // =========================
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(title: const Text("Day 22 - Theme Switch")),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // =========================
                // THEME ICON
                // =========================
                Icon(
                  isDarkMode ? Icons.dark_mode : Icons.light_mode,
                  size: 90,
                  color: isDarkMode ? Colors.amber : Colors.orange,
                ),

                const SizedBox(height: 20),

                // =========================
                // THEME TEXT
                // =========================
                Text(
                  isDarkMode ? "Dark Mode Enabled" : "Light Mode Enabled",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                // =========================
                // STATUS CARD
                // =========================
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),

                    child: Column(
                      children: [
                        const Text(
                          "Current Theme",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          isDarkMode ? "🌙 Dark Mode" : "☀️ Light Mode",
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // =========================
                // THEME SWITCH
                // =========================
                SwitchListTile(
                  title: const Text("Enable Dark Mode"),
                  secondary: Icon(
                    isDarkMode ? Icons.dark_mode : Icons.light_mode,
                  ),
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
