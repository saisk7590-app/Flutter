# 📅 Day 1 — Flutter UI Basics

## 🎯 Goal

Learn basic UI elements in Flutter and understand layout structure.

---

## 📚 What I Learned

### 1. Text Widget

* Used to display text on screen
* Can style using:

  * fontSize
  * color
  * fontWeight

Example:

```dart
Text("Hello", style: TextStyle(fontSize: 20))
```

---

### 2. ElevatedButton

* Used to create clickable button
* `onPressed` handles action

Example:

```dart
ElevatedButton(
  onPressed: () {
    print("Clicked");
  },
  child: Text("Click Me"),
)
```

---

### 3. SizedBox (Spacing)

* Used to add space between widgets

Example:

```dart
SizedBox(height: 20)
```

---

### 4. Column Layout

* Arranges widgets vertically

Example:

```dart
Column(
  children: [],
)
```

---

### 5. Center Widget

* Centers content on screen

---

### 6. Basic Styling

* Added color and bold text
* Improved UI readability

---

### 7. Navigation (New Concept 🚀)

* Learned how to move from one screen to another

Example:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => NextScreen(),
  ),
);
```

---

## 🛠 What I Built

* Welcome text UI
* Two buttons:

  * One for console action
  * One for navigation to Day 2
* Proper spacing using SizedBox

---

## 🧠 Key Understanding

* UI in Flutter is built using widgets
* Layout is controlled using Column and spacing
* Navigation allows multi-screen apps

---

## ⚡ Challenges Faced

* Understanding spacing between widgets
* Managing multiple buttons layout

---

## ✅ Status

✔ Day 1 Completed
✔ UI basics understood
✔ Navigation basics implemented

---

## 🚀 Next

👉 Day 2 — Container, Colors, Padding
