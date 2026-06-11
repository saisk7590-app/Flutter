# 📱 Flutter App Branding Notes

## 🎨 Change App Icon

### 1. Add Dependency

Open `pubspec.yaml` and add:

```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^6.0.0
  flutter_launcher_icons: ^0.14.4
```

### 2. Add Configuration

At the bottom of `pubspec.yaml`:

```yaml
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/icon/app_icon.png"
```

### 3. Create Folder Structure

```text
project/
├── assets/
│   └── icon/
│       └── app_icon.png
```

Recommended icon:

* PNG format
* Square image
* 1024 × 1024 pixels

### 4. Generate Icons

```bash
flutter pub get
dart run flutter_launcher_icons
```

### 5. Verify

```bash
flutter run
```

or

```bash
flutter build apk
```

---

# 📝 Change App Name

## Android

Open:

```text
android/app/src/main/AndroidManifest.xml
```

Find:

```xml
android:label="note_keeper_new"
```

Change to:

```xml
android:label="Note Keeper"
```

---

# 📦 Change APK Artifact Name (GitHub Actions)

Default:

```yaml
- name: Upload APK
  uses: actions/upload-artifact@v4
  with:
    name: release-apk
    path: build/app/outputs/flutter-apk/app-release.apk
```

Custom:

```yaml
- name: Upload APK
  uses: actions/upload-artifact@v4
  with:
    name: NoteKeeper-v1.0.0
    path: build/app/outputs/flutter-apk/app-release.apk
```

Downloaded file:

```text
NoteKeeper-v1.0.0.zip
```

---

# 📦 Rename Actual APK File + Artifact Name

```yaml
- name: Build APK
  run: flutter build apk --release

- name: Rename APK
  run: |
    mv build/app/outputs/flutter-apk/app-release.apk NoteKeeper.apk

- name: Upload APK
  uses: actions/upload-artifact@v4
  with:
    name: NoteKeeper-v1.0.0
    path: NoteKeeper.apk
```
For future projects, only change these two lines:

mv build/app/outputs/flutter-apk/app-release.apk YourAppName.apk

name: YourAppName-v1.0.0

Downloaded file:

```text
NoteKeeper.apk
```

---

# 🚀 GitHub Actions Workflow

## If You Change App Icon

```bash
flutter pub get
dart run flutter_launcher_icons

git add .
git commit -m "Updated app icon"
git push
```

GitHub Actions will generate a new APK.

---

## If You Change App Name Only

```bash
git add .
git commit -m "Changed app name"
git push
```

GitHub Actions will generate a new APK.

---

# 📋 Quick Reference

| Change            | Extra Command Needed |
| ----------------- | -------------------- |
| App Icon          | Yes                  |
| App Name          | No                   |
| APK Artifact Name | No                   |
| APK File Name     | No                   |
| UI Changes        | No                   |
| Colors            | No                   |
| Screens           | No                   |
| Navigation        | No                   |

---

# 🎯 Current Practice App

Project Name:

```yaml
name: note_keeper
```

Android App Name:

```xml
android:label="Note Keeper"
```

APK Artifact Name:

```yaml
name: NoteKeeper-v1.0.0
```

APK File Name:

```text
NoteKeeper.apk
```

---

# 🔮 Future Branding Topics

Learn these before publishing apps:

1. App Icon
2. App Name
3. Splash Screen
4. Package Name (`com.company.appname`)
5. Version Number (`1.0.0+1`)
6. APK/AAB Naming
7. Release Signing (Keystore)
8. Play Store Listing Assets
9. Privacy Policy
10. CI/CD Automation
=====================
# 🚀 Additional Notes

## Project Name vs App Name

These are different things.

### Project Name

Located in:

```yaml
name: note_keeper
```

Purpose:

* Internal Flutter project name
* Package imports
* Development use

---

### App Name

Located in:

```xml
android:label="Note Keeper"
```

Purpose:

* Name shown under app icon on phone

---

## 📦 Package Name

Example:

```text
com.saikiran.notekeeper
```

Examples:

```text
com.saikiran.expensetracker
com.saikiran.weatherapp
com.saikiran.todomaster
```

Important:

* Must be unique
* Cannot easily change after Play Store release

---

## 🔢 Version Number

Located in:

```yaml
version: 1.0.0+1
```

Meaning:

```text
1.0.0 = User-visible version
+1    = Build number
```

Examples:

```yaml
version: 1.0.1+2
version: 1.1.0+5
version: 2.0.0+10
```

---

## 📋 Release Checklist

Before creating a release APK:

* [ ] App Name Updated
* [ ] App Icon Updated
* [ ] Package Name Correct
* [ ] Version Number Updated
* [ ] APK Name Updated
* [ ] GitHub Actions Passing
* [ ] App Tested on Device

---

## 🎯 Recommended Naming Convention

Project Name:

```yaml
name: note_keeper
```

App Name:

```xml
android:label="Note Keeper"
```

Artifact Name:

```yaml
name: NoteKeeper-v1.0.0
```

APK Name:

```text
NoteKeeper.apk
```

Package Name:

```text
com.saikiran.notekeeper
```
=========
## Package Name

Example:

com.saikiran.notekeeper

Purpose:
- Unique app identifier
- Required for Play Store publishing

Where to Find:

android/app/build.gradle.kts

Look for:

applicationId = "com.example.note_keeper_new"

Change to:

applicationId = "com.saikiran.notekeeper"

Note:
No need to change package name for learning projects.
Change it only for portfolio or production apps.
=======
# 🔢 Version Number

## Where to Change

Open:

android/app/build.gradle.kts

(No changes needed here normally)

Instead, Flutter manages versioning from:

pubspec.yaml

Find:

version: 1.0.0+1

## Meaning

version: 1.0.0+1

1.0.0 = App Version (shown to users)
+1 = Build Number (internal)

Example:

version: 1.0.1+2

Meaning:

Version: 1.0.1
Build: 2

## Common Updates

Bug Fix:

version: 1.0.1+2

Small Feature Update:

version: 1.1.0+3

Major Update:

version: 2.0.0+4

## Learning Project

You can keep:

version: 1.0.0+1

for all practice apps.

## Portfolio Project

Before sharing:

version: 1.0.0+1

or

version: 1.0.1+2

## Play Store App

Every new release must increase the build number.

Examples:

version: 1.0.0+1
version: 1.0.1+2
version: 1.1.0+3
version: 2.0.0+4

## After Changing Version

Just commit and push:

git add .
git commit -m "Updated version"
git push

GitHub Actions will generate a new APK.

No special Flutter command required.