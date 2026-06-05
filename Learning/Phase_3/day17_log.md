# Day 17 — Form Validation

## 📅 Date

03-June-2026

---

## 🎯 Topic

Form Validation

TextFormField

User Input Validation

SnackBar Messages

---

## 📚 Concepts Learned

---

### 1. Form Widget

Form is used to group multiple input fields together and manage validation.

```dart id="f1k9qp"
Form(
  key: _formKey,
  child: Column(
    children: [
      // input fields
    ],
  ),
)
```

---

### 2. GlobalKey<FormState>

Used to control and validate the form.

```dart id="k2m8v1"
final _formKey = GlobalKey<FormState>();
```

It allows us to access:

```dart id="n8q1wx"
_formKey.currentState!.validate();
```

---

### 3. TextFormField

A special input field that supports validation.

```dart id="p9x2lm"
TextFormField(
  controller: nameController,
)
```

---

### 4. Validator Function

Used to check user input.

#### Example:

```dart id="v3q8nt"
validator: (value) {
  if (value == null || value.trim().isEmpty) {
    return "Field cannot be empty";
  }
  return null;
}
```

---

### 5. Password Validation

```dart id="z8m1kc"
validator: (value) {
  if (value == null || value.isEmpty) {
    return "Password cannot be empty";
  }
  if (value.length < 6) {
    return "Password must be at least 6 characters";
  }
  return null;
}
```

---

### 6. Form Validation Flow

1. User clicks Submit/Login
2. validate() runs
3. Each TextFormField validator executes
4. If error → show message
5. If all valid → success action runs

---

### 7. SnackBar

Used to show success messages.

```dart id="b7n2qz"
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text("Login Successful ✅"),
  ),
);
```

---

## 🛠 Mini Project

### Login Validation Screen

Features:

* Name input field
* Password input field
* Empty field validation
* Password length check
* Error messages
* Success SnackBar

---

## 💻 Final Code Features

### Form Submit

```dart id="t6x1pk"
void submitForm() {
  if (_formKey.currentState!.validate()) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Login Successful ✅"),
      ),
    );
  }
}
```

---

### Name Validation

```dart id="q2m8lz"
if (value == null || value.trim().isEmpty) {
  return "Name cannot be empty";
}
```

---

### Password Validation

```dart id="w8c1nv"
if (value.length < 6) {
  return "Password must be at least 6 characters";
}
```

---

## 📂 Files Created

Screen:

```text id="s1v9kd"
lib/screens/Phase_3/day17_validation_screen.dart
```

Log:

```text id="c7m2qp"
Learning/Phase_3/day17_log.md
```

---

## 🧠 Key Takeaways

* Form is used to group inputs
* TextFormField supports validation
* Validator checks user input
* GlobalKey controls form state
* validate() runs all checks at once
* SnackBar shows success messages
* Real apps always validate user input before submission

---

## 🚀 Day Status

✅ Day 17 Completed

### Build Completed

Login Validation Screen

### Skills Gained

* Form Handling
* Input Validation
* Error Messages
* Password Rules
* SnackBar Notifications
* Form State Management

---

Ready for:

➡️ Day 18 — Snackbar & AlertDialog Basics
