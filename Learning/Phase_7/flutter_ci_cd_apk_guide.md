# 🚀 Flutter APK Auto Build using GitHub Actions (Complete Guide)

🎯 Goal:
Automatically convert your Flutter app into an APK using GitHub Actions every time you push code.

---

# 🧱 STEP 1 — Push Flutter Project to GitHub

Make sure your Flutter project is uploaded to a GitHub repository:

✔ Contains:

* lib/
* android/
* pubspec.yaml

---

# 🧱 STEP 2 — Create GitHub Actions Folder

Inside your project, create this structure:

```text
.github/workflows/
```

Create file:

```text
flutter.yml
```

Full path:

```text
.github/workflows/flutter.yml
```

---

# 🧱 STEP 3 — Add GitHub Actions Workflow

Paste this code:

```yaml
name: Flutter APK Build

on:
  push:
    branches:
      - main

  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v3

      - name: Install Flutter
        uses: subosito/flutter-action@v2
        with:
          channel: stable

      - name: Install Dependencies
        run: flutter pub get

      - name: Build APK
        run: flutter build apk --release

      - name: Upload APK
        uses: actions/upload-artifact@v4
        with:
          name: release-apk
          path: build/app/outputs/flutter-apk/app-release.apk
```

---

# 🧠 HOW IT WORKS (IMPORTANT)

When you push code:

```text
GitHub detects push
   ↓
Starts workflow
   ↓
Installs Flutter in cloud server
   ↓
Runs flutter pub get
   ↓
Runs flutter build apk
   ↓
Generates APK
   ↓
Uploads APK as artifact
```

---

# 📱 STEP 4 — Download APK

Go to:

```text
GitHub Repo → Actions Tab
```

Then:
✔ Select latest run
✔ Open “Artifacts”
✔ Download `release-apk.zip`
✔ Extract APK file

---

# ⚡ STEP 5 — Install on Phone

* Transfer APK to phone OR download directly
* Install manually
* Test your app instantly

---

# 🔥 OPTIONAL FEATURES

## Manual Build Button

Add:

```yaml
workflow_dispatch:
```

Now you can click:

✔ Run workflow button in GitHub UI

---

# 🧠 IMPORTANT NOTES

✔ Each push = new APK build
✔ GitHub runs on temporary server
✔ No Android Studio needed
✔ Works like real CI/CD system

---

# 🚀 FINAL FLOW

```text
Code Change
   ↓
git push
   ↓
GitHub Actions runs
   ↓
Flutter builds APK
   ↓
APK downloaded from Artifacts
   ↓
Install on phone
```

---

# 🎯 RESULT

You now have:

✔ Automatic APK generation
✔ CI/CD pipeline
✔ Real production workflow
✔ Mobile testing without emulator

This is the same system used in real companies.

========================================================
========================================================

# 🚀 Flutter + GitHub Actions CI/CD (Complete Learning Notes)

🎯 Goal:
Convert Flutter app into APK automatically using GitHub Actions and use GitHub as your build system.

---

# 🧠 Core Concept (Very Important)

Every time you push code to GitHub:

```text id="c1"
Flutter Code Update
   ↓
Git Push
   ↓
GitHub Actions runs
   ↓
Flutter builds APK
   ↓
APK available to download
```

---

# 🔥 Flutter Channel: `stable`

```yaml id="c2"
with:
  channel: stable
```

### Meaning:

* Uses latest stable Flutter version
* Safe and production-ready
* Automatically updates Flutter version

### ⚠️ Note:

Sometimes updates may slightly change behavior or break packages.

---

# 🏢 Professional Approach (Important Insight)

Big companies often DO NOT use auto-updating Flutter.

They use:

```yaml id="c3"
flutter-version: '3.22.0'
```

### Why?

* Predictable builds
* No sudden breaking changes
* Stable production releases

---

# 📱 Your Learning Strategy (VERY IMPORTANT)

You will NOT push every small change.

Instead, your workflow is:

## 🟢 Recommended Practice

| Duration       | Action                 |
| -------------- | ---------------------- |
| Daily learning | Build features locally |
| Every 3–5 days | Push to GitHub         |
| After push     | Auto APK generated     |
| Test           | Install APK on phone   |

---

# 🚀 Real Example Workflow

## Day 1–3

* Login screen
* UI improvements
* Basic navigation

👉 Work locally

---

## Day 4 or 5

```bash id="c4"
git add .
git commit -m "Added login + signup screens"
git push
```

👉 GitHub builds APK automatically

---

## Install on Phone

* Download APK from GitHub Actions
* Install and test real app

---

# 🔥 Benefit of 3–5 Day Push Strategy

✔ Less GitHub build usage
✔ Cleaner version history
✔ More meaningful APK builds
✔ Better learning structure
✔ Avoids unnecessary CI runs

---

# 📦 Important Rule

GitHub Actions does NOT store one APK.

Each push creates:

```text id="c5"
Fresh APK build from latest code only
```

---

# ⚠️ APK Update Behavior

When installing new APK:

* It may update existing app OR
* Fail if signature/version changes

Later you will learn:

* App signing
* Version codes
* Release builds

---

# 🧠 Final Understanding

You are building a real development workflow:

✔ Build locally
✔ Learn features
✔ Push every 3–5 days
✔ Auto APK generation
✔ Test on real phone

---

# 🚀 Result

After this setup you can:

✔ Turn Flutter code → APK automatically
✔ Test real apps on mobile
✔ Use GitHub as build server
✔ Follow real industry CI/CD workflow
✔ Build apps like production developers

---

# 🔥 Next Level (Later)

You will later upgrade to:

* Play Store AAB builds
* Firebase deployment
* Automated release versioning
* Full production CI/CD pipeline
