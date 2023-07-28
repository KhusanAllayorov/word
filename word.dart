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
}
class CustomException implements Exception {
  final String massage;

  CustomException(this.massage);

  @override
  String toString() {
    return 'CustomException{massage: $massage}';
  }
}
