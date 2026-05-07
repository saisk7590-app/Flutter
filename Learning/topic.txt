# Flutter UI Practice App 🚀

## 📌 About

This project is a beginner-friendly Flutter app built to learn UI step by step.

Each screen represents a learning day:

* Day 1 → Text, Button, Spacing
* Day 2 → Container, Colors, Padding
* Day 3 → Row & Layout
* Day 4 → Column & Structure
* Day 5 → Combined UI

---

## 🧱 Project Structure

lib/
├── main.dart
└── screens/
    ├── day1_screen.dart
    ├── day2_screen.dart
    ├── day3_screen.dart
    ├── day4_screen.dart
    └── day5_screen.dart

---

## ▶️ How to Run

```bash
flutter run -d chrome
```

---

## 📅 Day 1 — Text & Button

### Concepts:

* Text
* ElevatedButton
* SizedBox (spacing)
* Column layout

### Features:

* Welcome text
* Button click (console print)
* Navigation to Day 2

---

## 🔄 Navigation

Navigation is implemented using:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => NextScreen(),
  ),
);
```

---

## 🎯 Goal

Build UI step-by-step like real apps instead of jumping directly into complex projects.

---

## 🧠 Learning Approach

* One concept per day
* One screen per concept
* Hands-on coding
* Clean and readable structure

---

## 🚀 Future Plan

* Login UI
* Multi-screen navigation
* API integration
* Full app development

---

## 👨‍💻 Author

Sai Kiran
