# 🔢 Flutter App Versioning Guide

## 📌 What is a Version Number?

Flutter uses:

```yaml
version: 1.0.0+1
```

Format:

```text
MAJOR.MINOR.PATCH+BUILD
```

Example:

```yaml
version: 1.0.0+1
```

Meaning:

| Part | Value | Purpose |
|--------|--------|----------|
| MAJOR | 1 | Big updates |
| MINOR | 0 | New features |
| PATCH | 0 | Bug fixes |
| BUILD | 1 | Internal release number |

---

# 📍 Where to Change Version

Open:

```text
pubspec.yaml
```

Find:

```yaml
version: 1.0.0+1
```

Update as needed.

---

# 🐛 Bug Fix Release

When fixing bugs only:

Examples:

```text
1.0.0+1
↓
1.0.1+2
```

```text
1.0.1+2
↓
1.0.2+3
```

Use for:

- Login bug fixes
- UI fixes
- Crash fixes
- Validation fixes

Rule:

```text
Increase PATCH
Increase BUILD
```

---

# ✨ New Feature Release

When adding new features:

Examples:

```text
1.0.2+3
↓
1.1.0+4
```

```text
1.1.0+4
↓
1.2.0+5
```

Use for:

- Search feature
- Dark mode
- Notifications
- Profile screen
- Settings page

Rule:

```text
Increase MINOR
Reset PATCH to 0
Increase BUILD
```

---

# 🚀 Major Update Release

When making significant changes:

Examples:

```text
1.2.0+5
↓
2.0.0+6
```

```text
2.0.0+6
↓
3.0.0+7
```

Use for:

- Dashboard redesign
- Complete UI redesign
- Architecture rewrite
- Major feature expansion

Rule:

```text
Increase MAJOR
Reset MINOR and PATCH to 0
Increase BUILD
```

---

# 📈 Example Timeline

### Initial Release

```yaml
version: 1.0.0+1
```

Launch app.

---

### Bug Fix

```yaml
version: 1.0.1+2
```

Fixed login issue.

---

### Another Bug Fix

```yaml
version: 1.0.2+3
```

Fixed app crash.

---

### New Feature

```yaml
version: 1.1.0+4
```

Added search functionality.

---

### Another Feature

```yaml
version: 1.2.0+5
```

Added dark mode.

---

### Major Update

```yaml
version: 2.0.0+6
```

Added dashboard and redesigned app.

---

# ⚠️ Build Number Rules

Build number should always increase.

Correct:

```text
1.0.0+1
1.0.1+2
1.0.2+3
1.1.0+4
1.2.0+5
2.0.0+6
```

Incorrect:

```text
1.0.0+1
1.0.1+2
1.1.0+1 ❌
```

Never decrease the build number.

---

# 🎯 Simple Rule

```text
Bug Fix     → Increase PATCH
New Feature → Increase MINOR
Big Update  → Increase MAJOR

Every Release → Increase BUILD
```

Examples:

```text
Bug Fix     → 1.0.1+2
New Feature → 1.1.0+3
Big Update  → 2.0.0+4
```

---

# 📱 Learning Projects

For practice apps:

```yaml
version: 1.0.0+1
```

is usually enough.

No need to update version numbers for every small learning change.

---

# 🏆 Portfolio Projects

Before sharing an APK:

- Update version number
- Increase build number
- Use meaningful release versions

Example:

```yaml
version: 1.0.0+1
```

or

```yaml
version: 1.1.0+2
```

---

# 🚀 Play Store Apps

Before every Play Store release:

✅ Increase build number

Examples:

```yaml
version: 1.0.0+1
version: 1.0.1+2
version: 1.1.0+3
version: 2.0.0+4
```

Failure to increase build number may cause Play Store upload errors.

---

# 📋 Quick Reference Table

| Change Type | Example |
|-------------|---------|
| Initial Release | 1.0.0+1 |
| Bug Fix | 1.0.1+2 |
| Another Bug Fix | 1.0.2+3 |
| New Feature | 1.1.0+4 |
| Another Feature | 1.2.0+5 |
| Major Update | 2.0.0+6 |

---

# ✅ Recommended Learning Rule

For now:

```yaml
version: 1.0.0+1
```

Keep it simple.

Focus on learning Flutter first.

Versioning becomes important when:

- Sharing APKs
- Building portfolio projects
- Publishing to Play Store
- Maintaining apps over time