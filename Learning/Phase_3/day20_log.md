# Day 20 — Dynamic Lists (Contacts App)

## 📅 Date

06-June-2026

---

## 🎯 Topic

Dynamic Lists

ListView.builder

List<Map> Data Structure

Contacts List UI

---

## 📚 Concepts Learned

---

### 1. List<Map> (Structured Data)

Instead of storing simple strings, we store structured data using Map.

Example:

```dart id="a1k2m9"
List<Map<String, String>> contacts = [
  {
    "name": "Sai Kiran",
    "phone": "9876543210",
  },
];
```

Each item contains multiple values.

---

### 2. Map Access

We access values using keys:

```dart id="b7m2x8"
contact["name"]
contact["phone"]
```

Maps allow structured and readable data handling.

---

### 3. ListView.builder

Used to create dynamic lists efficiently.

```dart id="c9x1q4"
ListView.builder(
  itemCount: contacts.length,
  itemBuilder: (context, index) {
    return Text(contacts[index]["name"]!);
  },
)
```

---

### 4. ListTile Widget

ListTile is a prebuilt Flutter widget used for list-style UI.

```dart id="d4m9p2"
ListTile(
  title: Text("Name"),
  subtitle: Text("Phone"),
)
```

---

### 5. Card Widget

Cards are used to improve UI appearance with elevation.

```dart id="e8x3q7"
Card(
  child: ListTile(),
)
```

---

### 6. CircleAvatar

Used for profile-style icons.

```dart id="f2m7x9"
CircleAvatar(
  child: Icon(Icons.person),
)
```

---

## 🛠 Mini Project

### Contacts List App

Features:

* Display contact names
* Display phone numbers
* Structured data using Map
* Dynamic rendering using ListView.builder
* Clean UI using Card + ListTile
* Profile icons using CircleAvatar

---

## 💻 Features Built

### Contact Data Structure

```dart id="g1x8m3"
List<Map<String, String>> contacts;
```

Stores multiple fields per contact.

---

### Dynamic List Rendering

```dart id="h6m2q9"
ListView.builder(
  itemCount: contacts.length,
  itemBuilder: (context, index) {
    final contact = contacts[index];
    return ListTile(
      title: Text(contact["name"]!),
      subtitle: Text(contact["phone"]!),
    );
  },
)
```

---

### UI Design Elements

* Card for elevation
* ListTile for structured layout
* CircleAvatar for icons
* Icon for call action

---

## ✅ What I Practiced

* List<Map> data structure
* Map key-value access
* ListView.builder
* Dynamic UI rendering
* ListTile usage
* Card styling
* CircleAvatar usage
* Real-world UI design patterns

---

## 🧠 Key Takeaways

* List<Map> is used for real app data.
* Each Map represents one complete item.
* ListView.builder efficiently renders large lists.
* ListTile simplifies list UI design.
* Flutter apps rely heavily on structured lists.
* This is the foundation of Contacts, Chat, and Feed screens.

---

## 📂 Files Created

Screen:

```text id="i9x3m1"
lib/screens/Phase_3/day20_dynamic_list_screen.dart
```

Log:

```text id="j2m8q4"
Learning/Phase_3/day20_
```
---

## 🚀 Advanced Features Added

### Search Contacts

- Real-time contact filtering
- Uses TextField + onChanged
- Updates UI dynamically with setState()

### Sort Contacts

- Sort contacts alphabetically (A-Z)
- Uses compareTo()

### Add Contact Screen

- Separate screen for creating contacts
- Navigation using Navigator.push()

### Return Data Between Screens

- Contact data returned using Navigator.pop()

### Phone Validation

- 10-digit validation using RegExp
- Prevents invalid phone numbers

### Input Restrictions

- Numbers only
- Maximum 10 digits

### Country Code Selection

- Dropdown for country codes
- Stores country code with contact data

### Favorites System

- Toggle favorite contacts
- Heart icon updates dynamically

### Contact Deletion

- Long press delete
- Swipe-to-delete using Dismissible

### Undo Delete

- SnackBar with UNDO action
- Restores deleted contact

### State Management Practice

- Extensive use of StatefulWidget
- Dynamic UI updates with setState()

---