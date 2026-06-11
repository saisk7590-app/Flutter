# Day 22 — Theme & Styling (Theme Switch App)

## 📅 Date

08-June-2026

---

## 🎯 Topic

ThemeData

Light Mode

Dark Mode

Theme Switching

App Styling

---

## 📚 Concepts Learned

### 1. ThemeData

ThemeData controls the overall appearance of a Flutter application.

Example:

```dart
ThemeData(
  brightness: Brightness.light,
)
```

Used to apply consistent styling across widgets.

---

### 2. Light Theme

```dart
ThemeData(
  brightness: Brightness.light,
)
```

Provides a bright user interface.

---

### 3. Dark Theme

```dart
ThemeData(
  brightness: Brightness.dark,
)
```

Provides a dark user interface.

---

### 4. themeMode

Controls which theme is currently active.

```dart
themeMode:
    isDarkMode
        ? ThemeMode.dark
        : ThemeMode.light,
```

Switches themes dynamically.

---

### 5. Boolean Theme State

```dart
bool isDarkMode = false;
```

Tracks current theme selection.

---

### 6. SwitchListTile

Used to toggle settings.

```dart
SwitchListTile(
  value: isDarkMode,
)
```

Commonly used in settings screens.

---

### 7. AppBarTheme

Used to customize AppBar styling.

```dart
appBarTheme: AppBarTheme(
  backgroundColor: Colors.blue,
)
```

---

### 8. Scaffold Background

Custom background colors for themes.

```dart
scaffoldBackgroundColor:
    Color(0xFFF5F7FA)
```

---

### 9. Card Widget

Used to display grouped information.

```dart
Card(
  child: Text("Current Theme"),
)
```

---

### 10. Conditional UI

```dart
isDarkMode
    ? Icons.dark_mode
    : Icons.light_mode
```

Different widgets are shown depending on state.

---

## 🛠 Mini Project

### Theme Switch App

Features:

* Light Theme
* Dark Theme
* Theme Toggle
* Dynamic Icons
* Theme Status Card
* Custom AppBar Styling

---

## 💻 Features Built

### Theme Switching

```dart
themeMode:
    isDarkMode
        ? ThemeMode.dark
        : ThemeMode.light
```

Changes app appearance instantly.

---

### Status Card

Displays:

```text
Current Theme
☀️ Light Mode
```

or

```text
Current Theme
🌙 Dark Mode
```

---

### Dynamic Theme Icon

```dart
Icons.dark_mode
Icons.light_mode
```

Updates based on selected theme.

---

## ✅ What I Practiced

* ThemeData
* ThemeMode
* Light Theme
* Dark Theme
* AppBarTheme
* Scaffold Styling
* Card Widget
* SwitchListTile
* Conditional UI
* State Management

---

## 🧠 Key Takeaways

* ThemeData controls app styling.
* Flutter supports multiple themes.
* themeMode switches themes dynamically.
* SwitchListTile is useful for settings.
* Cards improve information presentation.
* Most modern apps support Dark Mode.

---

## 📂 Files Created

Screen:

lib/screens/Phase_3/day22_theme_screen.dart

Log:

Learning/Phase_3/day22_log.md

---

## 🚀 Day Status

✅ Day 22 Completed

### Build Completed

Theme Switch App

### Skills Gained

* ThemeData
* ThemeMode
* Light/Dark Themes
* Theme Customization
* Dynamic Styling
* Settings UI

---

Ready for:

➡️ Day 23 — Notes App (Multiple Screens + Notes Management)
