class FlutterInitials {
  static String getInitials(String name, {int maxLength = 4}) {
    List<String> words =
        name.replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '').trim().split(' ');
    String initials = '';

    for (var word in words) {
      if (word.isNotEmpty) {
        if (RegExp(r'\d').hasMatch(word)) {
          initials += word;
        } else {
          initials += word[0].toUpperCase();
        }
      }
      if (initials.length >= maxLength) {
        break;
      }
    }
    return initials.length > maxLength
        ? initials.substring(0, maxLength)
        : initials;
  }
}
