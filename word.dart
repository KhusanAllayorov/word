class Words {
  String _word;

  Words(this._word);

  factory Words.name(String w) {
    if (w.isEmpty && !w.contains(RegExp(r"a-z"))) {
      throw CustomException(
          "Bo'sh bolmasligi va kichik xarflardan iborat bolishi kerak!");
    }
    return Words(w);
  }

  void reverseVowels() {
    List<String> unli = ['a', 'e', 'i', 'o', 'u'];
    List<String> s = _word.split('');
    List<String> j = s.where((e) => unli.contains(e.toLowerCase())).toList();
    int t = j.length - 1;
    for (int i = 0; i < s.length; i++) {
      if (unli.contains(s[i].toLowerCase()) && t >= 0) {
        s[i] = j[t];
        t--;
      }
    }
    print(s.join());
  }

  Words copyWith({String? word}) {
    return Words(word ?? _word);
  }

  @override
  Object? noSuchMethod(Invocation invocation) {
    print('The method ${invocation.memberName} is not implemented.');
    return super.noSuchMethod(invocation);
  }

  @override
  String toString() {
    return 'Words{_word: $_word}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Words &&
          runtimeType == other.runtimeType &&
          _word == other._word;

  @override
  int get hashCode => _word.hashCode;
}

class CustomException implements Exception {
  final String massage;

  CustomException(this.massage);

  @override
  String toString() {
    return 'CustomException{massage: $massage}';
  }
}
