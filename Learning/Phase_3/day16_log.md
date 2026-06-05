# Day 16 — TextEditingController & Hello User App

## 📅 Date

02-June-2026

---

## 🎯 Topic

TextEditingController

Reading User Input

Dynamic UI Updates

---

## 📚 Concepts Learned

### 1. What is TextEditingController?

TextEditingController is used to manage and read data entered into a TextField.

Example:

```dart
final TextEditingController nameController =
    TextEditingController();
```

It allows Flutter to track the current text inside a TextField.

---

### 2. Connecting Controller to TextField

```dart
TextField(
  controller: nameController,
)
```

Now whatever the user types is stored inside:

```dart
nameController.text
```

---

### 3. Reading User Input

Example:

```dart
nameController.text
```

If user enters:

```text
Sai Kiran
```

Then:

```dart
nameController.text
```

returns:

```text
Sai Kiran
```

---

### 4. Updating UI with setState()

```dart
setState(() {
  userName = nameController.text;
});
```

Flutter rebuilds the UI and displays the updated value.

---

### 5. dispose()

Controllers use memory.

To release memory when the screen closes:

```dart
@override
void dispose() {
  nameController.dispose();
  super.dispose();
}
```

This is considered good Flutter practice.

---

### 6. String Methods

#### trim()

```dart
nameController.text.trim()
```

Removes extra spaces before and after text.

Example:

```text
"  Sai Kiran  "
```

becomes:

```text
"Sai Kiran"
```

---

#### toUpperCase()

```dart
nameController.text.toUpperCase()
```

Converts text to uppercase.

Example:

```text
Sai Kiran
```

becomes:

```text
SAI KIRAN
```

---

## 🛠 Mini Project

### Hello User App

Features:

* Enter Name
* Show Greeting
* Clear Input
* Uppercase Conversion
* Input Validation

---

## 💻 Final Features

### Show Name

```dart
void showName() {
  if (nameController.text.trim().isEmpty) return;

  setState(() {
    userName = nameController.text.trim().toUpperCase();
  });
}
```

Displays user name on screen.

---

### Clear Data

```dart
void clearData() {
  setState(() {
    userName = "";
    nameController.clear();
  });
}
```

Resets greeting and clears TextField.

---

### Dispose Controller

```dart
@override
void dispose() {
  nameController.dispose();
  super.dispose();
}
```

Prevents memory leaks.

---

## ✅ What I Practiced

* Creating TextEditingController
* Connecting Controller to TextField
* Reading User Input
* Updating UI with setState()
* Creating Custom Functions
* Clearing TextField
* Using trim()
* Using toUpperCase()
* Input Validation
* Using dispose()

---

## 🧠 Key Takeaways

* TextEditingController manages TextField data.
* User input can be accessed using `.text`.
* setState() updates the UI.
* dispose() releases controller memory.
* trim() removes unwanted spaces.
* toUpperCase() converts text to capital letters.
* Validation prevents empty input submission.

---

## 📂 Files Created

Screen:

```text
lib/screens/Phase_3/day16_controller_screen.dart
```

Log:

```text
Learning/Phase_3/day16_log.md
```

---

## 🚀 Day Status

✅ Day 16 Completed

### Build Completed

Hello User App

### Skills Gained

* TextEditingController
* TextField Handling
* Reading User Input
* UI Updates with setState()
* Input Validation
* Controller Disposal
* String Manipulation

Ready for:

➡️ Day 17 — Form Validation
