# Day 19 — Todo App

## 📅 Date

05-June-2026

---

## 🎯 Topic

Todo App

Dynamic Lists

ListView.builder

Add & Delete Tasks

---

## 📚 Concepts Learned

### 1. List

A List stores multiple values.

Example:

```dart
List<String> tasks = [];
```

Used to store all todo tasks.

---

### 2. Adding Data to a List

```dart
tasks.add(taskController.text.trim());
```

Adds a new task to the list.

---

### 3. Removing Data from a List

```dart
tasks.removeAt(index);
```

Removes a task using its index position.

---

### 4. ListView.builder

Creates widgets dynamically from list data.

```dart
ListView.builder(
  itemCount: tasks.length,
  itemBuilder: (context, index) {
    return Text(tasks[index]);
  },
)
```

Useful when displaying large or changing lists.

---

### 5. Dynamic UI Updates

```dart
setState(() {
  tasks.add(...);
});
```

Whenever the task list changes, Flutter rebuilds the UI.

---

### 6. Empty State

```dart
tasks.isEmpty
```

Used to display a message when no tasks exist.

---

### 7. SnackBar

Displays temporary feedback messages.

Example:

```dart
SnackBar(
  content: Text("Task Added Successfully ✅"),
)
```

---

### 8. AlertDialog

Used to confirm task deletion.

Example:

```dart
AlertDialog(
  title: Text("Delete Task"),
)
```

---

## 🛠 Mini Project

### Todo App

Features:

* Add Task
* Delete Task
* Task Counter
* Empty State Message
* Success SnackBars
* Delete Confirmation Dialog

---

## 💻 Features Built

### Add Task

```dart
void addTask()
```

Adds user-entered tasks into the list.

---

### Delete Task

```dart
void deleteTask(int index)
```

Removes a task after confirmation.

---

### Task Counter

```dart
Total Tasks: ${tasks.length}
```

Shows the total number of tasks.

---

### Dynamic Task List

```dart
ListView.builder()
```

Displays all tasks automatically.

---

## ✅ What I Practiced

* StatefulWidget
* TextEditingController
* List<String>
* add()
* removeAt()
* setState()
* ListView.builder()
* SnackBar
* AlertDialog
* Dynamic UI Updates

---

## 🧠 Key Takeaways

* Lists are used to store multiple items.
* ListView.builder creates widgets dynamically.
* setState() refreshes the UI after data changes.
* AlertDialog is useful for confirmations.
* SnackBars provide user feedback.
* Todo Apps combine several Flutter concepts into one project.

---

## 📂 Files Created

Screen:

lib/screens/Phase_3/day19_todo_screen.dart

Log:

Learning/Phase_3/day19_log.md

---

## 🚀 Day Status

✅ Day 19 Completed

### Build Completed

Todo App

### Skills Gained

* Dynamic Lists
* ListView.builder
* Task Management
* Dialogs
* SnackBars
* State Management
* User Interaction

Ready for:

➡️ Day 20 — Dynamic Lists & Advanced ListView.builder
