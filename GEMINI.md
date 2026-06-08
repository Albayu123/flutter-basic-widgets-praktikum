# Praktikum Flutter Widget Dasar - GEMINI.md

## Project Overview
This workspace is dedicated to the **Praktikum Flutter Widget Dasar** assignment. The primary goal is to learn and implement basic Flutter widgets including `Text`, `Icon`, `Button`, `Column`, and `Row` through a series of structured tasks (Tugas 1 to Tugas 7).

- **Student:** Alief Albayu
- **Topic:** Basic Flutter Widgets
- **Target File:** `lib/main.dart` (Self-contained in a single file)
- **Technologies:** Flutter, Dart

## Building and Running
The following commands are inferred from the requirements in `AGENT.md`:

### Initial Setup
To create the Flutter project as specified:
```bash
flutter create praktikum_widget_dasar
cd praktikum_widget_dasar
```

### Execution & Validation
Once the project is set up and `lib/main.dart` is populated:
- **Run the app:** `flutter run`
- **Static Analysis:** `flutter analyze`
- **Logging:** View outputs in the console via `debugPrint`.

## Development Conventions
Based on the "Aturan Penulisan Kode" and "Checklist Rubrik" in `AGENT.md`:

- **Widget Usage:** Prefer `const` constructors where possible for performance.
- **Naming:** 
  - Classes: `PascalCase`
  - Variables/Methods: `camelCase`
- **Formatting:** 2-space indentation (standard Dart/Flutter style).
- **Structure:** 
  - Every class should have a `const` constructor with `super.key`.
  - Main logic should be contained within `lib/main.dart`.
- **UI Safety:** Use `SingleChildScrollView` or `Expanded` to prevent layout overflows.
- **Logging:** Always use `debugPrint()` instead of `print()`.

## Key Files
- `AGENT.md`: Detailed instructions and rubrics for the practical assignment.
- `lib/main.dart`: (To be created) The primary source file containing all implementation logic.
