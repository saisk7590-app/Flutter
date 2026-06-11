# Day 23 — Advanced Notes App

## 📅 Date

09-June-2026

---

## 🎯 Topic

Notes App

Multiple Screens

Navigation

Passing Data Between Screens

---

## 📚 Concepts Learned

### 1. Notes Management

Notes are stored using:

```dart
List<String> notes = [];
```

Each note is added dynamically by the user.

---

### 2. TextEditingController

Used to read note input from TextField.

```dart
TextEditingController noteController =
    TextEditingController();
```

---

### 3. ListView.builder

Used to display notes dynamically.

```dart
ListView.builder(
  itemCount: notes.length,
)
```

---

### 4. Navigation

Open another screen using:

```dart
Navigator.push()
```

Example:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) =>
        NoteDetailScreen(
      note: notes[index],
    ),
  ),
);
```

---

### 5. Passing Data

Data can be sent to another screen.

```dart
note: notes[index]
```

The selected note is passed to the detail screen.

---

### 6. Receiving Data

Receive data using constructor parameters.

```dart
final String note;
```

---

### 7. Navigator.pop()

Used to return to the previous screen.

```dart
Navigator.pop(context);
```

---

### 8. AlertDialog

Used before deleting a note.

```dart
AlertDialog()
```

---

### 9. SnackBar

Used to show success messages.

```dart
SnackBar()
```

---

## 🛠 Mini Project

### Advanced Notes App

Features:

* Add Note
* Delete Note
* Notes Counter
* Open Note Details
* Navigation Between Screens
* Data Passing
* SnackBars
* AlertDialog

---

## 💻 Screens Built

### Screen 1

day23_notes_screen.dart

Features:

* Add Notes
* View Notes
* Delete Notes
* Open Selected Note

---

### Screen 2

note_detail_screen.dart

Features:

* View Full Note
* Receive Note Data
* Navigate Back

---

## ✅ What I Practiced

* StatefulWidget
* TextEditingController
* List<String>
* ListView.builder
* AlertDialog
* SnackBar
* Navigator.push()
* Navigator.pop()
* Constructor Parameters
* Multiple Screens
* Data Passing

---

## 🧠 Key Takeaways

* Navigation is used to move between screens.
* Data can be passed through constructors.
* Notes apps use master-detail screen patterns.
* Navigator.push() opens a new screen.
* Navigator.pop() returns to the previous screen.
* Multiple screens are a core Flutter concept.

---

## 📂 Files Created

Screen:

lib/screens/Phase_3/day23_notes_screen.dart

Screen:

lib/screens/Phase_3/note_detail_screen.dart

Log:

Learning/Phase_3/day23_log.md

---

## 🚀 Day Status

✅ Day 23 Completed

### Build Completed

Advanced Notes App

### Skills Gained

* Multiple Screens
* Navigation
* Data Passing
* Notes Management
* Dynamic Lists
* User Interaction

---

Ready for:

➡️ Day 24 — Revision & Refactoring
