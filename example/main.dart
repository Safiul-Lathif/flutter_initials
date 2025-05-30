import 'package:flutter_initials/flutter_initials.dart';

void main() {
  print(FlutterInitials.getInitials("John Doe")); // JD
  print(FlutterInitials.getInitials("Mary-Kate Olsen")); // MK
  print(FlutterInitials.getInitials("Élodie Yung")); // EY
  print(FlutterInitials.getInitials("Agent 47")); // A47
  print(FlutterInitials.getInitials(
      "Albus Percival Wulfric Brian Dumbledore")); // APWB
  print(FlutterInitials.getInitials("  jack   o'neill ")); // JO
}
