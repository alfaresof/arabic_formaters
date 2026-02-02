
extension TArabic on String {
  static const list = {
    'أ': 'a',
    'ب': 'b',
    'ت': 't',
    'ث': 'th',
    'ج': 'j',
    'ح': 'ha',
    'خ': 'kh',
    'د': 'd',
    'ذ': 'th',
    'ر': 'r',
    'ز': 'z',
    'س': 's',
    'ش': 'she',
    'ص': 'sa',
    'ض': 'da',
    'ط': 'ta',
    'ظ': 'tha',
    'ع': 'o',
    'غ': 'gh',
    'ف': 'fa',
    'ق': 'qa',
    'ك': 'k',
    'ل': 'l',
    'م': 'm',
    'ن': 'n',
    'ه': 'ha',
    'و': 'wa',
    'ي': 'ya',
    'محمد': 'mohamad',
  };


  /// To convert arabic string into english username.
  ///
  /// for example:
  /// input:
  /// ```أحمد```
  ///
  /// output:
  /// ```ahmed```
  String convertArabicToUser() {
    final translit = <String>[];
    final source = this;
    final sourceSymbols = <String>[...source.split('')];

    for (final element in sourceSymbols) {
      final transElement = list.containsKey(element)
          ? list[element] ?? ''
          : element;
      translit.add(transElement);
    }
    return translit.join();
  }

  /// This check if character is arabic
  bool isArabicCharacter() {
    // Regular expression matching Latin alphabet and common diacritics
    final arabicRegex = RegExp(r'^[\u0600-\u06FF]$');

    return arabicRegex.hasMatch(this);
  }
}