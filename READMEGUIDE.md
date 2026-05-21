# Flutter + VS Code Beginner Notes (Final)

# ✅ What We Installed

* Flutter SDK
* VS Code
* Flutter Extension
* Dart Extension
* Android Studio (for Android SDK tools)

---

# ✅ Flutter PATH Setup

Flutter SDK location:

```text
C:\Users\srijaytech\flutter
```

PATH should contain:

```text
C:\Users\srijaytech\flutter\bin
```

Check Flutter installation:

```bash
flutter --version
```

---

# ✅ Check Flutter Environment

Run:

```bash
flutter doctor
```

This checks:

* Flutter installation
* Android tools
* Chrome support
* Connected devices

---

# ✅ Create New Flutter Project

```bash
flutter create note_keeper_new
```

Open project:

```bash
cd note_keeper_new
code .
```

---

# ✅ Run Flutter App

## Run in Chrome

```bash
flutter run -d chrome
```

---

# ⚠️ Hot Reload Issue (IMPORTANT)

## Problem

When saving file using:

```text
Ctrl + S
```

UI did NOT update automatically.

Only updated after pressing:

```text
r
```

inside terminal.

---

# ✅ Why It Happened

App was started from terminal only:

```bash
flutter run
```

VS Code debugger was NOT attached.

---

# ✅ Correct Way (BEST METHOD)

## Start app from VS Code directly

### Method 1

Press:

```text
F5
```

---

### Method 2

Click:

```text
Run > Start Debugging
```

---

### Method 3

Click:

```text
▶ Run
```

(top-right in VS Code)

---

# ✅ Correct Flutter Workflow

```text
Open VS Code
↓
Open Flutter Project
↓
Press F5
↓
Chrome opens automatically
↓
Edit code
↓
Ctrl + S
↓
Instant UI update ⚡
```

---

# ✅ Result

Now:

```text
Ctrl + S
```

automatically updates UI using Hot Reload ⚡

No need to press:

```text
r
```

manually.

---

# ✅ Hot Reload vs Hot Restart

## Hot Reload

Triggered by:

```text
Ctrl + S
```

* Updates UI instantly
* Keeps app state
* Fast development workflow

---

## Hot Restart

Use when UI behaves weird or state does not update.

Press inside terminal:

```text
Shift + R
```

This fully restarts the app.

---

# ✅ Stop Running App

In terminal:

```text
Ctrl + C
```

---

# ✅ When to Use Terminal

Use terminal only for commands like:

```bash
flutter pub get
flutter clean
flutter doctor
flutter run
```

For normal development:

```text
Use F5 + Ctrl + S
```

---

# ✅ Edit Flutter UI

Main file:

```text
lib/main.dart
```

Example:

```dart
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Welcome Sai 👋",
        style: TextStyle(fontSize: 24),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        child: Text("Click Me"),
      ),
    ],
  ),
),
```

---

# ✅ Important Beginner Understanding

| Thing          | Meaning              |
| -------------- | -------------------- |
| Flutter SDK    | Main Flutter tools   |
| VS Code        | Code editor          |
| Android Studio | Provides Android SDK |
| Hot Reload     | Updates UI instantly |
| Hot Restart    | Fully restarts app   |
| main.dart      | Main starting file   |
| Ctrl + S       | Save file            |
| F5             | Run with debugger    |

---

# ✅ Your Current Status

✔ Flutter installed
✔ VS Code connected
✔ Chrome app running
✔ Hot Reload working
✔ First Flutter project working
✔ Proper Flutter workflow setup complete

---

# 🚀 Next Learning Steps

1. Text Widget
2. Container Widget
3. Row & Column
4. Buttons
5. Colors & Padding
6. Login Screen UI
7. Navigation
8. ListView
9. Forms
10. Real App UI Building

---

# 🎯 Final Understanding

Old workflow ❌

```text
Open terminal
↓
Run flutter command manually
↓
Edit code
↓
Press r manually
↓
Repeat again and again
```

New workflow ✅

```text
Open VS Code
↓
Press F5
↓
Chrome opens automatically
↓
Edit code
↓
Ctrl + S
↓
Hot Reload updates instantly ⚡
```

This is the proper Flutter developer workflow.
