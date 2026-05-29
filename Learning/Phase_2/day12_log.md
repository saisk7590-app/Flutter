# 📅 Day 12 — Bottom Navigation Bar

## 🎯 Goal

Build a real multi-tab mobile app using BottomNavigationBar and understand app-level navigation structure.

---

## 📚 Concepts Learned

* `BottomNavigationBar`
* `BottomNavigationBarItem`
* `currentIndex`
* `onTap`
* `StatefulWidget`
* Dynamic screen switching
* Multi-tab app structure
* Navigation between app sections

---

## 🛠 What I Built

* Created a bottom navigation app layout
* Added Home tab
* Added Notifications tab
* Added Profile tab
* Added Settings tab
* Connected multiple screens together
* Built a reusable navigation structure
* Added dummy Settings screen

---

## 🧠 Key Understanding

* `BottomNavigationBar` is used for app-level navigation
* `StatefulWidget` is required when UI changes dynamically
* `currentIndex` tracks selected tab
* `onTap` changes active screen
* Real apps use bottom navigation for main sections
* Flutter automatically changes navigation behavior when tabs exceed 3 items

---

## ⚡ Challenges Faced

* Icons became invisible after adding 4th tab
* Understanding why BottomNavigationBar behavior changed
* Confusion between `Navigator.push()` and tab navigation
* Managing multiple screens inside one navigation system

---

## ✅ Problems Solved

* Fixed invisible icons issue
* Added `BottomNavigationBarType.fixed`
* Added selected and unselected item colors
* Added missing Settings screen
* Navigation between tabs working correctly
* Multi-screen app structure working successfully

---

## 🚀 Mini Improvements Tried

* Added Settings tab
* Changed navigation colors
* Tested different icons
* Improved tab visibility
* Added custom navigation behavior

---

## 📂 Files Created/Updated

* `main_navigation_screen.dart`
* `settings_screen.dart`
* `main.dart`
* `day12_log.md`

---

## ✅ Status

✔ Completed

---

## 🚀 Next Step

Combine all screens into one mini app and improve app flow in Day 13.
