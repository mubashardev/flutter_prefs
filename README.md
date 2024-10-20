# flutter_prefs

`flutter_prefs` is a simple and customizable Flutter package designed to help developers easily manage and update user preferences in their apps. It provides a flexible API to create UI components for preferences such as switches, text fields, and other common settings.

## Features

- Store and update preferences with ease
- Includes customizable widgets like switches and text fields
- Simple key-value pair management
- Designed for easy integration into your app’s settings UI

## Getting Started

To use `flutter_prefs` in your Flutter project, first add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_prefs: ^1.0.0
```

Then, run the following command to install the package:

```bash
flutter pub get
```

## Usage

### Basic Example

Here’s a simple example of how to use `flutter_prefs` to create a settings screen with multiple preference widgets:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_prefs/flutter_prefs.dart';

class Prefs extends StatelessWidget {
  const Prefs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: PreferencesLayout(
        preferences: [
          SwitchPref(
            title: "Mubashar",
            prefKey: "test",
          ),
          SwitchPref(
            title: "Show Last seen",
            prefKey: "last_seen",
          ),
          TextfieldPref(
            title: "Name",
            prefKey: "name",
            dialogTitle: "Enter your name",
            dialogHint: "Full name",
          ),
          TextfieldPref(
            title: "Email",
            prefKey: "email",
            dialogHint: "User Email",
          ),
        ],
      ),
    );
  }
}
```

### Widgets

- **PreferencesLayout:** Layout to organize and display multiple preferences.
- **SwitchPref:** A toggle switch for boolean values.
- **TextfieldPref:** A text field for string values with a customizable dialog prompt.

### Example Code:

```dart
class PreferencesLayout extends StatelessWidget {
  final List<Preference> preferences;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: preferences,
    );
  }

  const PreferencesLayout({
    super.key,
    required this.preferences,
  });
}
```

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
