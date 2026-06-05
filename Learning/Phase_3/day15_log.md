# Day 15 — StatefulWidget & Counter App

## 📅 Date

01-June-2026

---

## 🎯 Topic

StatefulWidget

setState()

Dynamic UI Updates

---

## 📚 Concepts Learned

### 1. What is State?

State is data that can change while the app is running.

Examples:

* Counter Value
* Like Button Status
* Dark Mode Switch
* Cart Item Count

---

### 2. StatelessWidget vs StatefulWidget

#### StatelessWidget

Used when UI never changes.

Example:

```dart
Text("Welcome")
```

---

#### StatefulWidget

Used when data changes and UI must update.

Example:

```dart
int count = 0;
```

Counter value changes during runtime.

---

### 3. StatefulWidget Structure

```dart
class Day15CounterScreen extends StatefulWidget {
  const Day15CounterScreen({super.key});

  @override
  State<Day15CounterScreen> createState()
      => _Day15CounterScreenState();
}
```

StatefulWidget creates the screen.

---

### 4. State Class

```dart
class _Day15CounterScreenState
    extends State<Day15CounterScreen> {
}
```

Stores all changing data.

---

### 5. setState()

```dart
setState(() {
  count++;
});
```

Used to notify Flutter that data changed and UI should rebuild.

Without setState():

```dart
count++;
```

UI will not update.

---

### 6. Ternary Operator

```dart
condition ? value1 : value2;
```

Used in the counter app:

```dart
onPressed: count > 0 ? decrementCounter : null,
```

Meaning:

* Enable button when count > 0
* Disable button when count = 0

---

## 🛠 Mini Project

### Counter App

Features:

* Increment Counter
* Decrement Counter
* Reset Counter
* Disable Minus Button at Zero

---

## 💻 Final Code Features

### Increment

```dart
void incrementCounter() {
  setState(() {
    count++;
  });
}
```

---

### Decrement

```dart
void decrementCounter() {
  setState(() {
    count--;
  });
}
```

---

### Reset

```dart
void resetCounter() {
  setState(() {
    count = 0;
  });
}
```

---

### Disable Negative Values

```dart
onPressed: count > 0 ? decrementCounter : null,
```

---

## ✅ What I Practiced

* Creating StatefulWidget
* Using State Class
* Creating Variables
* Creating Functions
* Using setState()
* Updating UI Dynamically
* Button Click Events
* Conditional Button Enable/Disable
* Ternary Operator

---

## 🧠 Key Takeaways

* StatefulWidget is used when data changes.
* State stores changing values.
* setState() rebuilds the UI.
* Flutter updates the screen after setState().
* Buttons can be enabled or disabled using conditions.
* Dynamic UI is the foundation for real Flutter apps.

---

## 📂 Files Created

Screen:

```text
lib/screens/Phase_3/day15_counter_screen.dart
```

Log:

```text
Learning/Phase_3/day15_log.md
```

---

## 🚀 Day Status

✅ Day 15 Completed

### Build Completed

Counter App

### Skills Gained

* StatefulWidget
* State Management Basics
* setState()
* Dynamic UI Updates
* Conditional Buttons

Ready for:

➡️ Day 16 — TextEditingController (Hello User App)
