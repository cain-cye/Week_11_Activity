# PC16 - Mobile Development with Lab
- Name: Ebuenga, Caryl Yasmin P.
- Year and Section: 3.3 BSIT
- Course: Mobile Development with Lab
## Week 11 Activity: Asynchronous Programming in Dart

### Overview
This project adds asynchronous functionality to the Week 9 `Whiteboard` class using Dart's `Future`, `async`, and `await` mechanisms.

---

### Key Requirements Met

- **Class Selection**
  - Uses the `Whiteboard` class created in Week 9.

- **Async Method (`saveToCloud`)**
  - Returns a `Future<String>` representing a background operation[cite: 35].
  - Uses `await Future.delayed(Duration(seconds: 2))` to simulate network latency[cite: 35].

- **Non-Blocking Program Flow**
  - `main()` uses `async`/`await`[cite: 35].
  - System messages and other operations run immediately before `await`, proving that execution is non-blocking[cite: 35].

---

### How to Run

1. Open [DartPad](https://dartpad.dev/).
2. Paste the `main.dart` code into the editor.
3. Click **Run** to execute and observe the timed output in the console.

Or run locally via Dart SDK:
```bash
dart run main.dart
