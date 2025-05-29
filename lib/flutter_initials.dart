class FlutterInitials {
  static String getInitials(String name) {
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
      if (initials.length >= 4) {
        break;
      }
    }
    return initials.length > 4 ? initials.substring(0, 4) : initials;
  }
}
