class FlutterInitials {
  /// Returns the initials of a given name.
  ///
  /// [name] is the full name
  /// [maxLength] is the maximum length of the initials. Defaults to 4.
  ///
  /// The method will return the first letter of each word (ignoring non-alphabetic
  /// words) up to a maximum of [maxLength] characters. If the initials length is
  /// greater than [maxLength], the method will return the first [maxLength] characters.
  static String getInitials(String name, {int maxLength = 4}) {
    // Remove all non-alphanumeric characters and split the string into words
    List<String> words =
        name.replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '').trim().split(' ');
    // Initialize empty string for the initials
    String initials = '';

    // Loop through each word
    for (var word in words) {
      // Check if the word is not empty
      if (word.isNotEmpty) {
        // If the word contains numbers, add it to the initials
        if (RegExp(r'\d').hasMatch(word)) {
          initials += word;
        } else {
          // Otherwise add the first letter of the word to the initials
          initials += word[0].toUpperCase();
        }
      }
      // Break the loop if the initials length is greater than maxLength
      if (initials.length >= maxLength) {
        break;
      }
    }
    // Return the initials. If the length is greater than maxLength, return a substring of maxLength length.
    return initials.length > maxLength
        ? initials.substring(0, maxLength)
        : initials;
  }

  /// Alias for [getInitials].
  ///
  /// Returns the initials of a given name.
  ///
  /// [name] is the full name
  /// [maxLength] is the maximum length of the initials. Defaults to 4.
  ///
  /// The method will return the first letter of each word (ignoring non-alphabetic
  /// words) up to a maximum of [maxLength] characters. If the initials length is
  /// greater than [maxLength], the method will return the first [maxLength] characters.
  static String getInitialsFromName(String name, {int maxLength = 4}) {
    return getInitials(name, maxLength: maxLength);
  }

  /// Returns a map containing all the different cases of a given name.
  ///
  /// Returns a map with the following keys: `camelCase`, `pascalCase`, `snakeCase`.
  /// The values are the corresponding cases of the given [name].
  static Map<String, String> getAllCases(String name) {
    Map<String, String> allCases = {};
    allCases['camelCase'] = toCamelCase(name);
    allCases['pascalCase'] = toPascalCase(name);
    allCases['snakeCase'] = toSnakeCase(name);
    return allCases;
  }

  /// Converts a string to camel case.
  ///
  /// The method takes a string, removes any non-alphanumeric characters,
  /// splits the string into words, and then joins them back together
  /// with the first letter of each word capitalized, except the first
  /// word which is entirely lowercased.
  static String toCamelCase(String input) {
    // Remove any non-alphanumeric characters and split the string into words
    final words =
        input.replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '').trim().split(' ');

    var result = '';
    for (var i = 0; i < words.length; i++) {
      final word = words[i];
      if (i > 0) {
        // Capitalize the first letter of each word except the first one
        result += '${word[0].toUpperCase()}${word.substring(1)}';
      } else {
        // Lowercase the first word
        result += word.toLowerCase();
      }
    }

    return result;
  }

  /// Converts a string to Pascal case.
  ///
  /// The method takes a string, removes any non-alphanumeric characters,
  /// splits the string into words, and then joins them back together
  /// with the first letter of each word capitalized.
  static String toPascalCase(String s) {
    // Remove any non-alphanumeric characters and split the string into words
    List<String> words =
        s.replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '').trim().split(' ');
    String result = '';
    // Join the words back together with the first letter of each word capitalized
    for (var word in words) {
      result += word[0].toUpperCase() + word.substring(1).toLowerCase();
    }
    return result;
  }

  /// Converts a string to snake case.
  ///
  /// The method takes a string, removes any non-alphanumeric characters,
  /// splits the string into words, and then joins them back together
  /// with an underscore (_) character between each word. The entire string
  /// is then converted to lowercase.
  static String toSnakeCase(String s) {
    // Remove any non-alphanumeric characters and split the string into words
    List<String> words =
        s.replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '').trim().split(' ');
    // Join the words back together with an underscore (_) character between each word
    // and convert the entire string to lowercase
    return words.join('_').toLowerCase();
  }
}
