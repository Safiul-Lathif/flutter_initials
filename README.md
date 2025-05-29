Here's a clean and professional `README.md` file for your **flutter_initials** package:

---

````markdown
# flutter_initials

A lightweight Dart utility for extracting initials from a full name, designed for use in Flutter apps. Perfect for generating avatars, short representations of names, or tags.

## Features

- Extracts the first letter of each word in a name
- Converts to uppercase
- Preserves numbers if found in words
- Trims special characters
- Limits output to 4 characters max

## Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_initials: ^1.0.2
```
````

Then run:

```bash
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:flutter_initials/flutter_initials.dart';
```

Use the utility:

```dart
String initials = FlutterInitials.getInitials("John Doe" , 4);
print(initials); // Output: JD
```

## Examples

| Input                                       | Output | Explanation                                 |
| ------------------------------------------- | ------ | ------------------------------------------- |
| `"John Doe"`                                | `JD`   | First letters of first and last name        |
| `"Mary-Kate Olsen"`                         | `MK`   | Hyphen removed, initials from both words    |
| `"Élodie Yung"`                             | `EY`   | Special characters removed                  |
| `"Agent 47"`                                | `A47`  | Numbers preserved                           |
| `"Albus Percival Wulfric Brian Dumbledore"` | `APWB` | Max 4 initials                              |
| `"  jack   o'neill "`                       | `JO`   | Extra spaces and special characters cleaned |

## Contributing

Feel free to open issues or submit pull requests for improvements or new features.

## License

[MIT License](LICENSE)

```

---

Let me know if you'd like help publishing to pub.dev or adding additional badges (e.g. build status, version, likes).
```
