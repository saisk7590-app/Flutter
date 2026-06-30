# 📘 Software Versioning Guide

## 📌 What is Software Versioning?

Software versioning is a way to identify different releases of an application.

Every release gets a unique version number so developers and users know exactly which version of the app is installed.

Examples:

```text
1.0.0
1.2.3
2.0.0
15.5.02.4
389.0.0.0.76
```

---

# 📌 What is Semantic Versioning (SemVer)?

The most widely used versioning system is called **Semantic Versioning**, commonly known as **SemVer**.

It follows this format:

```text
MAJOR.MINOR.PATCH
```

Example:

```text
1.4.2
```

Meaning:

| Part  | Purpose                           |
| ----- | --------------------------------- |
| MAJOR | Breaking changes or major updates |
| MINOR | New features                      |
| PATCH | Bug fixes                         |

---

# 📌 Understanding MAJOR.MINOR.PATCH

Example:

```text
2.5.7
│ │ │
│ │ └── PATCH
│ └──── MINOR
└────── MAJOR
```

### MAJOR

Increase when:

* Complete redesign
* Breaking API changes
* Major architecture changes
* Large feature expansion

Example:

```text
1.4.8
↓

2.0.0
```

---

### MINOR

Increase when adding new features.

Examples:

* Search
* Dark Mode
* Notifications
* Settings
* Chat

Example:

```text
1.2.5
↓

1.3.0
```

---

### PATCH

Increase when fixing bugs.

Examples:

* Crash fix
* Login fix
* UI bug
* Validation fix
* Performance improvements

Example:

```text
1.3.2
↓

1.3.3
```

---

# 📌 Flutter Version Format

Flutter extends Semantic Versioning with a Build Number.

Format:

```yaml
version: MAJOR.MINOR.PATCH+BUILD
```

Example:

```yaml
version: 1.2.3+45
```

Meaning:

```text
1.2.3
```

Public App Version (SemVer)

```text
45
```

Internal Build Number

---

# 📌 Flutter Version Examples

Initial Release

```yaml
version: 1.0.0+1
```

Bug Fix

```yaml
version: 1.0.1+2
```

Another Bug Fix

```yaml
version: 1.0.2+3
```

New Feature

```yaml
version: 1.1.0+4
```

Another Feature

```yaml
version: 1.2.0+5
```

Major Update

```yaml
version: 2.0.0+6
```

---

# 📌 Build Number Rules

The Build Number must always increase.

Correct:

```text
1.0.0+1
1.0.1+2
1.1.0+3
2.0.0+4
```

Incorrect:

```text
1.0.0+1
1.0.1+2
1.1.0+1 ❌
```

Never decrease the Build Number.

---

# 📌 Why Do Some Apps Have 4 or 5 Numbers?

Examples:

```text
Instagram
389.0.0.0.76

YouTube
21.23.48

Samsung Gallery
15.5.02.4

Google Chrome
137.0.7151.69

Microsoft Edge
137.0.3296.68

Windows
10.0.26100.4351
```

These apps **do not strictly follow Semantic Versioning**.

Large companies often create their own versioning systems to better manage millions of users, frequent releases, multiple platforms, and internal builds.

Common custom formats include:

```text
MAJOR.MINOR.PATCH.BUILD
```

or

```text
YEAR.RELEASE.PATCH.BUILD
```

or completely custom numbering systems.

---

# 📌 Why Big Companies Use Custom Versioning

Large applications may have:

* Weekly releases
* Daily bug fixes
* Multiple development teams
* Android & iOS versions
* Beta releases
* Internal testing builds
* A/B experiments
* Device-specific builds

Extra numbers help engineers identify the exact build.

Example:

```text
137.0.7151.69
```

A developer can immediately identify the exact release that produced a bug.

---

# 📌 SemVer vs Custom Versioning

| Semantic Versioning          | Custom Versioning                  |
| ---------------------------- | ---------------------------------- |
| MAJOR.MINOR.PATCH            | Any format chosen by the company   |
| Standard convention          | Company-specific convention        |
| Easy to understand           | Optimized for internal engineering |
| Common in libraries and apps | Common in large-scale products     |

---

# 📌 Which Versioning Should You Use?

### Learning Projects

```yaml
version: 1.0.0+1
```

No need to change it for every small practice update.

---

### Portfolio Projects

Use meaningful versions.

Example:

```yaml
version: 1.0.0+1
version: 1.0.1+2
version: 1.1.0+3
```

---

### Play Store / App Store Apps

Before every release:

* Increase the Build Number
* Update the version according to your changes

Example:

```yaml
version: 2.1.0+15
```

---

# 📌 Quick Reference

| Change          | Version |
| --------------- | ------- |
| Initial Release | 1.0.0+1 |
| Bug Fix         | 1.0.1+2 |
| Another Bug Fix | 1.0.2+3 |
| New Feature     | 1.1.0+4 |
| Another Feature | 1.2.0+5 |
| Major Update    | 2.0.0+6 |

---

# 📌 Key Takeaways

✅ Software versioning identifies releases.

✅ Semantic Versioning (SemVer) uses:

```text
MAJOR.MINOR.PATCH
```

✅ Flutter uses:

```text
MAJOR.MINOR.PATCH+BUILD
```

✅ Increase:

* PATCH → Bug fixes
* MINOR → New features
* MAJOR → Breaking or major updates
* BUILD → Every release

✅ Big companies like Instagram, YouTube, Chrome, and Samsung often use custom versioning formats with 4 or more numbers for internal tracking and large-scale release management.

---

# 🏆 Final Summary

For most Flutter developers:

```yaml
version: 1.0.0+1
```

is the recommended starting point.

As your app evolves:

* Bug fixes → Increase PATCH
* New features → Increase MINOR
* Major updates → Increase MAJOR
* Every release → Increase BUILD

This follows industry best practices and is fully compatible with both the Google Play Store and the Apple App Store.
