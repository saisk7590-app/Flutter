# Day 18 — Snackbar & AlertDialog

## 📅 Date

04-June-2026

---

## 🎯 Topic

Snackbar

AlertDialog

User Feedback Messages

Confirmation Dialogs

---

## 📚 Concepts Learned

### 1. Snackbar

Snackbar is a temporary message displayed at the bottom of the screen.

Example:

```dart
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text("Success Message"),
  ),
);
```

Used for:

* Success Messages
* Error Messages
* Warnings
* Notifications

---

### 2. ScaffoldMessenger

Responsible for displaying Snackbars.

```dart
ScaffoldMessenger.of(context)
```

---

### 3. AlertDialog

Popup dialog used for confirmations and warnings.

```dart
AlertDialog(
  title: Text("Delete Item"),
  content: Text("Are you sure?"),
)
```

---

### 4. showDialog()

Displays an AlertDialog.

```dart
showDialog(
  context: context,
  builder: (context) {
    return AlertDialog();
  },
);
```

---

### 5. Navigator.pop()

Closes the dialog.

```dart
Navigator.pop(context);
```

---

### 6. Snackbar Styling

Customized Snackbar appearance.

```dart
SnackBar(
  backgroundColor: Colors.green,
  behavior: SnackBarBehavior.floating,
)
```

---

### 7. Rounded Corners

```dart
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
)
```

Used to create modern UI.

---

### 8. SizedBox Width Control

```dart
SizedBox(
  width: 220,
)
```

Used to create consistent button sizes.

---

## 🛠 Mini Project

### Snackbar & AlertDialog Demo

Features:

* Success Snackbar
* Error Snackbar
* Delete Confirmation Dialog
* Styled Snackbar Messages
* Fixed Width Buttons
* Custom Icon Header

---

## 💻 Features Built

### Success Message

```dart
showSuccessSnackbar(context);
```

Displays green success notification.

---

### Error Message

```dart
showErrorSnackbar(context);
```

Displays red error notification.

---

### Confirmation Dialog

```dart
showAlert(context);
```

Shows delete confirmation popup.

---

### Delete Action

```dart
Navigator.pop(context);
```

Closes dialog and displays delete Snackbar.

---

## ✅ What I Practiced

* Snackbar
* ScaffoldMessenger
* AlertDialog
* showDialog()
* Navigator.pop()
* UI Styling
* Button Layout Control
* User Feedback Design
* Confirmation Actions

---

## 🧠 Key Takeaways

* Snackbar is used for temporary feedback.
* AlertDialog is used for confirmations.
* ScaffoldMessenger shows Snackbars.
* Navigator.pop() closes dialogs.
* Custom styling improves user experience.
* Different message types should use different colors.

---

## 📂 Files Created

Screen:

lib/screens/Phase_3/day18_snackbar_screen.dart

Log:

Learning/Phase_3/day18_log.md

---

## 🚀 Day Status

✅ Day 18 Completed

### Build Completed

Snackbar & AlertDialog Demo App

### Skills Gained

* Snackbar
* AlertDialog
* Dialog Management
* UI Styling
* User Feedback Systems
* Confirmation Workflows

Ready for:

➡️ Day 19 — Todo App
