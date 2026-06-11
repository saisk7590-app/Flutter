import 'package:flutter/material.dart';

//import '../coming_soon_screen.dart';

// =====================================================
// PHASE 3 DAY SCREENS
// Replace ComingSoonScreen with the actual screen
// as each day is completed (Day 15 → Day 24)
// =====================================================

import 'day15_counter_screen.dart';
import 'day16_controller_screen.dart';
import 'day17_validation_screen.dart';
import 'day18_snackbar_screen.dart';
import 'day19_todo_screen.dart';
import 'day20_dynamic_list_screen.dart';
import 'day21_state_screen.dart';
import 'day22_theme_screen.dart';
import 'day23_notes_screen.dart';
import 'day24_revision_screen.dart';

// ⭐ FINAL PROJECT IMPORT
import 'smart_task_manager_screen.dart';

class Phase3Screen extends StatelessWidget {
  const Phase3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Phase 3")),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Phase 3 - App Logic",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              "Day 15 - Day 24",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 25),
            // =========================
            // Final proect
            // =========================
            _dayCard(
              context,
              "Final Project",
              "Smart Task Manager",
              Icons.task_alt,
              const SmartTaskManagerScreen(),
            ),
            // =========================
            // DAY 15
            // =========================
            _dayCard(
              context,
              "Day 15",
              "Counter App",
              Icons.add_circle,
              const Day15CounterScreen(),
            ),

            // =========================
            // DAY 16
            // =========================
            _dayCard(
              context,
              "Day 16",
              "Hello User App",
              Icons.text_fields,
              const Day16ControllerScreen(),
            ),

            // =========================
            // DAY 17
            // =========================
            _dayCard(
              context,
              "Day 17",
              "Login Validation",
              Icons.fact_check,
              const Day17ValidationScreen(),
            ),

            // =========================
            // DAY 18
            // =========================
            _dayCard(
              context,
              "Day 18",
              "Snackbar & Alerts",
              Icons.notifications_active,
              const Day18SnackbarScreen(),
            ),

            // =========================
            // DAY 19
            // =========================
            _dayCard(
              context,
              "Day 19",
              "Todo App",
              Icons.check_circle,
              const Day19TodoScreen(),
            ),

            // =========================
            // DAY 20
            // =========================
            _dayCard(
              context,
              "Day 20",
              "Dynamic Lists",
              Icons.list,
              const Day20DynamicListScreen(),
            ),

            // =========================
            // DAY 21
            // =========================
            _dayCard(
              context,
              "Day 21",
              "Local State",
              Icons.settings_backup_restore,
              const Day21StateScreen(),
            ),

            // =========================
            // DAY 22
            // =========================
            _dayCard(
              context,
              "Day 22",
              "Theme & Styling",
              Icons.dark_mode,
              const Day22ThemeScreen(),
            ),

            // =========================
            // DAY 23
            // =========================
            _dayCard(
              context,
              "Day 23",
              "Notes App",
              Icons.note_alt,
              const Day23NotesScreen(),
            ),

            // =========================
            // DAY 24
            // =========================
            _dayCard(
              context,
              "Day 24",
              "Phase 3 Revision",
              Icons.school,
              const Day24RevisionScreen(),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _dayCard(
    BuildContext context,
    String day,
    String title,
    IconData icon,
    Widget screen,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: ListTile(
        leading: Icon(icon),
        title: Text(day),
        subtitle: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}
