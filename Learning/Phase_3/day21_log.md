# Day 21 — Local State (State Practice App)

## 📅 Date

07-June-2026

---

## 🎯 Topic

Local State Management

Boolean State

UI Toggle Logic

Conditional Rendering

---

## 📚 Concepts Learned

---

### 1. Local State

Local state is data that exists inside a single widget and controls its UI.

Example:

```dart id="a8m2x9"
bool isOn = false;
```

Used for UI changes inside one screen only.

---

### 2. Boolean State

Boolean values are used for toggle-based UI.

```dart id="b7x1m3"
bool isLiked = false;
bool showText = true;
```

They represent ON/OFF or TRUE/FALSE states.

---

### 3. setState()

Used to update UI when state changes.

```dart id="c2m8x7"
setState(() {
  isOn = !isOn;
});
```

Flutter rebuilds the screen automatically.

---

### 4. Toggle Logic

Used to switch between true and false.

```dart id="d9x3m1"
isOn = !isOn;
```

This flips the value.

---

### 5. Conditional UI Rendering

Show widgets based on condition.

```dart id="e1m7x8"
if (showText)
  Text("Hello Flutter")
```

If condition is false → widget is hidden.

---

### 6. Icon State Change

Icons can change based on state.

```dart id="f8m2x9"
isLiked
  ? Icons.favorite
  : Icons.favorite_border
```

Used in like buttons and reactions.

---

### 7. SwitchListTile

Used for toggle switches in settings UI.

```dart id="g3x9m2"
SwitchListTile(
  value: isOn,
  onChanged: (value) {},
)
```

---

## 🛠 Mini Project

### State Practice App

Features:

* Toggle Switch
* Like Button
* Show/Hide Text
* Counter Increment
* UI updates using setState()

---

## 💻 Features Built

### Toggle Switch

```dart id="h2x8m1"
isOn = !isOn;
```

Switches between ON and OFF state.

---

### Like Button

```dart id="i7m3x9"
isLiked = !isLiked;
```

Changes icon and color dynamically.

---

### Show/Hide Text

```dart id="j1x9m2"
showText = !showText;
```

Controls visibility of UI widgets.

---

### Counter

```dart id="k8m2x7"
counter++;
```

Increases numeric state value.

---

## ✅ What I Practiced

* Local state management
* Boolean variables
* Toggle logic
* setState() usage
* Conditional UI rendering
* Icon state switching
* SwitchListTile widget
* Basic UI interaction logic

---

## 🧠 Key Takeaways

* Local state controls UI inside one screen.
* Boolean values are used for toggles.
* setState() refreshes UI when state changes.
* UI can change dynamically based on conditions.
* Flutter apps rely heavily on state-driven UI.
* Icons and widgets can change based on state.

---

## 📂 Files Created

Screen:

```text id="l4m9x2"
lib/screens/Phase_3/day21_state_screen.dart
```

Log:

```text id="m7x3q9"
Learning/Phase_3/day21_log.md
```

---

## 🚀 Day Status

✅ Day 21 Completed

### Build Completed

State Practice App

### Skills Gained

* Local State Management
* Boolean Logic
* Toggle Systems
* Conditional UI
* Dynamic Icons
* setState() Deep Understanding

---

Ready for:

➡️ Day 22 — Theme & Dark Mode App
