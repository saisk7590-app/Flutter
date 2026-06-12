# ✅ Flutter Release Checklist

## 📌 Purpose

This checklist helps ensure your Flutter app is ready before:

* Sharing APKs
* Portfolio Releases
* Play Store Uploads

Use this checklist before every release.

---

# 🎨 Branding

## App Name

Check:

```text
android:label="Your App Name"
```

Example:

```text
android:label="Note Keeper"
```

Status:

```text
☐ Completed
```

---

## App Icon

Verify:

```text
Custom App Icon
```

Instead of:

```text
Flutter Default Icon
```

Status:

```text
☐ Completed
```

---

## Splash Screen

Verify:

```text
Custom Splash Screen
```

Status:

```text
☐ Completed
```

---

# 📦 Application Identity

## Package Name

Example:

```text
com.saikiran.notekeeper
```

Verify:

```text
Unique
Professional
Finalized
```

Status:

```text
☐ Completed
```

---

# 🔢 Versioning

Verify:

```yaml
version: 1.0.0+1
```

Updated for release.

Status:

```text
☐ Completed
```

---

# 🧪 Testing

## Device Testing

Test on:

```text
☐ Physical Android Device
☐ Different Screen Sizes
```

---

## UI Testing

Verify:

```text
☐ No Overflow Errors
☐ No Layout Issues
☐ Buttons Work
☐ Navigation Works
☐ Forms Work
```

---

## Error Testing

Verify:

```text
☐ No Crashes
☐ No Red Screens
☐ No Console Errors
```

---

# 🚀 Build Verification

## APK Build

Run:

```bash
flutter build apk --release
```

Verify:

```text
☐ APK Generated Successfully
```

---

## AAB Build

Run:

```bash
flutter build appbundle --release
```

Verify:

```text
☐ AAB Generated Successfully
```

---

# 🔐 Signing

## Keystore

Verify:

```text
☐ Keystore Created
☐ Password Saved
☐ Backup Created
```

---

## Signed Release

Verify:

```text
☐ Signed APK
☐ Signed AAB
```

---

# 📝 Content Review

Verify:

```text
☐ No Placeholder Text
☐ No Test Data
☐ No Debug Buttons
☐ No Temporary Screens
```

---

# 🔧 GitHub Actions

Verify:

```text
☐ Workflow Passing
☐ APK Generated
☐ Artifact Download Works
```

---

# 🏆 Portfolio Release Checklist

Before sharing:

```text
☐ App Name
☐ App Icon
☐ Splash Screen
☐ Version Number
☐ APK Generated
☐ Tested on Device
```

---

# 📱 Play Store Release Checklist

Before upload:

```text
☐ App Name
☐ App Icon
☐ Splash Screen
☐ Package Name
☐ Version Updated
☐ Keystore Ready
☐ Signed AAB Generated
☐ Screenshots Ready
☐ Privacy Policy Ready
☐ Store Description Ready
```

---

# ⚠️ Common Beginner Mistakes

Do NOT:

```text
☒ Upload Debug APK
☒ Forget Version Update
☒ Forget Keystore Backup
☒ Use Flutter Default Icon
☒ Publish Without Testing
```

---

# 🎯 Final Release Flow

```text
Build App
    ↓
Branding Complete
    ↓
Testing Complete
    ↓
Version Updated
    ↓
Signed AAB Generated
    ↓
Play Store Upload
```

---

# ✅ Quick Release Checklist

```text
☐ App Name
☐ App Icon
☐ Splash Screen
☐ Package Name
☐ Version Number
☐ Device Testing
☐ APK Build
☐ AAB Build
☐ Keystore
☐ Signed Release
☐ Screenshots
☐ Privacy Policy
☐ Play Store Upload
```

---

# 📚 Related Topics

Completed:

* App Icon
* App Name
* Package Name
* Versioning
* Splash Screen
* APK vs AAB
* Keystore Signing

Next Topic:

* Play Store Assets
