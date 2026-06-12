# 📱 Flutter Splash Screen Guide

## 📌 What is a Splash Screen?

A splash screen is the first screen users see when opening your application.

Flow:

```text
Open App
    ↓
Splash Screen
    ↓
Home Screen
```

---

# 🎯 Why Use a Splash Screen?

## 1. Branding

Displays:

* App Logo
* App Name
* Brand Colors

Example:

```text
📝 Note Keeper
```

---

## 2. Professional Appearance

Without Splash Screen:

```text
Open App
↓
White Screen
↓
Home Screen
```

With Splash Screen:

```text
Open App
↓
Logo + Brand
↓
Home Screen
```

More polished and professional.

---

## 3. Loading Time

While the app initializes:

* Firebase
* SharedPreferences
* APIs
* Local Storage

the splash screen is displayed.

---

# 📱 Types of Splash Screens

## Simple Splash Screen

```text
📝
Note Keeper
```

---

## Logo Splash Screen

```text
[Logo]

Note Keeper
```

---

## Animated Splash Screen

```text
Logo Fade In
↓
Navigate to Home
```

Usually used in production apps.

---

# 🚀 Recommended Flutter Package

Use:

```text
flutter_native_splash
```

This creates a native splash screen for Android and iOS.

---

# 📦 Add Dependency

Open:

```text
pubspec.yaml
```

Add:

```yaml
dev_dependencies:
  flutter_native_splash: ^2.4.6
```

---

# ⚙️ Configuration

At the bottom of `pubspec.yaml`:

```yaml
flutter_native_splash:
  color: "#FFFFFF"
  image: assets/icon/app_icon.png

  android: true
  ios: true
```

---

# 📁 Folder Structure

```text
project/
├── assets/
│   └── icon/
│       └── app_icon.png
```

Recommended image:

* PNG format
* Square image
* 1024 × 1024 pixels

---

# 🔨 Generate Splash Screen

Run:

```bash
flutter pub get
dart run flutter_native_splash:create
```

Flutter will automatically generate splash screen files.

---

# 🔄 Regenerate Splash Screen

After changing logo or color:

```bash
dart run flutter_native_splash:create
```

---

# ❌ Remove Splash Screen

Run:

```bash
dart run flutter_native_splash:remove
```

---

# 🚀 GitHub Actions Workflow

If you change splash screen:

```bash
flutter pub get
dart run flutter_native_splash:create

git add .
git commit -m "Added splash screen"
git push
```

GitHub Actions will generate a new APK.

---

# 📋 Common Commands

| Action                   | Command                               |
| ------------------------ | ------------------------------------- |
| Install Package          | flutter pub get                       |
| Create Splash Screen     | dart run flutter_native_splash:create |
| Regenerate Splash Screen | dart run flutter_native_splash:create |
| Remove Splash Screen     | dart run flutter_native_splash:remove |

---

# 🎯 Example for Note Keeper

```yaml
flutter_native_splash:
  color: "#FFFFFF"
  image: assets/icon/app_icon.png

  android: true
  ios: true
```

This is enough for a learning or portfolio app.

---

# ⚠️ Important Notes

* Splash Screen ≠ App Icon
* Splash Screen appears when app opens
* App Icon appears on the phone home screen
* Always regenerate after changing splash settings
* Test on a real device before release

---

# ✅ Release Checklist

Before publishing:

* [ ] App Icon Set
* [ ] Splash Screen Added
* [ ] App Name Updated
* [ ] Package Name Correct
* [ ] Version Updated
* [ ] APK/AAB Generated

---

# 📚 Related Topics

Completed:

* App Icon
* App Name
* Package Name
* Versioning

Next Topic:

* APK vs AAB
s