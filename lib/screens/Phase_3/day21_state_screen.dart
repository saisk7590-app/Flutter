import 'dart:ui';
import 'package:flutter/material.dart';

class Day21StateScreen extends StatefulWidget {
  const Day21StateScreen({super.key});

  @override
  State<Day21StateScreen> createState() => _Day21StateScreenState();
}

class _Day21StateScreenState extends State<Day21StateScreen> {
  bool isOn = false;
  bool isLiked = false;
  bool showText = true;
  bool isDarkMode = false;
  int counter = 0;

  String buttonState = "idle";

  void toggleSwitch() => setState(() => isOn = !isOn);
  void toggleLike() => setState(() => isLiked = !isLiked);
  void toggleText() => setState(() => showText = !showText);
  void toggleTheme() => setState(() => isDarkMode = !isDarkMode);
  void increment() => setState(() => counter++);

  void changeButtonState() {
    setState(() => buttonState = "loading");

    Future.delayed(const Duration(seconds: 2), () {
      setState(() => buttonState = "done");

      Future.delayed(const Duration(seconds: 1), () {
        setState(() => buttonState = "idle");
      });
    });
  }

  // =========================
  // ✅ FIXED GLASS CARD (NO LISTTILE ERROR)
  // =========================
  Widget glassCard({required Widget child}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Material(
          // 🔥 IMPORTANT FIX: Material wrapper added
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? Colors.white.withAlpha(20)
                  : Colors.black.withAlpha(8),
              border: Border.all(
                color: isDarkMode
                    ? Colors.white.withAlpha(30)
                    : Colors.black.withAlpha(10),
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: child,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode
          ? const Color(0xFF0F1115)
          : const Color(0xFFF4F6FA),

      appBar: AppBar(
        title: const Text("Day 21 - PRO FIXED"),
        backgroundColor: isDarkMode ? Colors.black : Colors.blue,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),

        child: Column(
          children: [
            // =========================
            // ROW 1
            // =========================
            Row(
              children: [
                Expanded(
                  child: glassCard(
                    child: Switch(
                      value: isOn,
                      onChanged: (_) => toggleSwitch(),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: glassCard(
                    child: AnimatedScale(
                      scale: isLiked ? 1.3 : 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: IconButton(
                        icon: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.grey,
                        ),
                        onPressed: toggleLike,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // =========================
            // ROW 2
            // =========================
            Row(
              children: [
                Expanded(
                  child: glassCard(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: toggleText,
                          child: const Text("Toggle Text"),
                        ),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: showText
                              ? const Text("Hello Flutter 👋")
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: glassCard(
                    child: Column(
                      children: [
                        Text("Counter: $counter"),
                        ElevatedButton(
                          onPressed: increment,
                          child: const Text("Increase"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // =========================
            // ROW 3 (NO LISTTILE ERROR FIXED)
            // =========================
            Row(
              children: [
                Expanded(
                  child: glassCard(
                    child: Column(
                      children: [
                        const Text("Dark Mode"),
                        Switch(
                          value: isDarkMode,
                          onChanged: (_) => toggleTheme(),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isOn
                          ? Colors.green.withAlpha(180)
                          : Colors.grey.withAlpha(120),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(child: Text(isOn ? "ACTIVE" : "OFF")),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // =========================
            // ROW 4
            // =========================
            glassCard(
              child: Column(
                children: [
                  const Text("Multi-State Button"),

                  const SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: changeButtonState,
                    child: Text(
                      buttonState == "idle"
                          ? "Submit"
                          : buttonState == "loading"
                          ? "Loading..."
                          : "Done",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
