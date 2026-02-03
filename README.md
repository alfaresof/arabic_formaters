
# Arabic Formaters

A lightweight, powerful Dart extension package designed to simplify common tasks when dealing with Arabic content in Flutter and Dart applications.

## Features ✨

* **Transliteration:** Convert Arabic names and strings into English-friendly usernames/text.
* **Validation:** Easily check if a character belongs to the Arabic alphabet.
* **Number Formatting:** Shorten large numbers with Arabic suffixes (e.g., 10K -> 10ألف).
* **Time Ago (Arabic):** Display relative time (e.g., "5 minutes ago") in clean, concise Arabic.
* **Date Recency:** Quickly check if a `DateTime` object falls within a specific recent range.

---

## Installation 💻

Add `arabic_helpers` (or your package name) to your `pubspec.yaml` file:

```yaml
dependencies:
  arabic_helpers: ^latest_version

```

---

## Usage 🛠️

### 1. String Extensions (Transliteration & Validation)

Convert Arabic text to Latin characters for URLs or usernames.

```dart
import 'package:arabic_helpers/arabic_helpers.dart';

void main() {
  String name = "محمد";
  print(name.convertArabicToUser()); // Output: mohamad

  String char = "أ";
  print(char.isArabicCharacter()); // Output: true
}

```

### 2. Number Formatting

Format large integers into a readable Arabic format.

```dart
void main() {
  int subscribers = 5000;
  print(subscribers.formatNumbers()); // Output: ٥ آلاف
  
  int views = 2000000;
  print(views.formatNumbers()); // Output: ٢ م
}

```

### 3. DateTime Extensions

Get human-readable relative time in Arabic or check if a date is "new".

```dart
void main() {
  DateTime postDate = DateTime.now().subtract(Duration(hours: 2));

  // Show as "ساعتين"
  print(postDate.showRecentTimeInArabic()); 

  // Check if date is within the last 7 days (default)
  print(postDate.isNewDate()); // Output: true
  
  // Custom range: Check if within last 2 days
  print(postDate.isNewDate(days: 2)); 
}

```

---

## Reference 📖

### String Extensions

| Method | Return Type | Description |
| --- | --- | --- |
| `convertArabicToUser()` | `String` | Maps Arabic letters to English phonetics. |
| `isArabicCharacter()` | `bool` | Returns true if the string is a single Arabic character. |

### Integer Extensions

| Method | Return Type | Description |
| --- | --- | --- |
| `formatNumbers()` | `String` | Appends 'ألف' for thousands and 'م' for millions. |

### DateTime Extensions

| Method | Return Type | Description |
| --- | --- | --- |
| `showRecentTimeInArabic()` | `String` | Returns formatted string like "10 دقائق" or "3 يوم". |
| `isNewDate({int? days})` | `bool` | Checks if the date is within the specified day count. |

---

## Dependencies 📦

This package uses:

* `intl`: For advanced date formatting.
