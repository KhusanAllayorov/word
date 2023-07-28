import '../../extension/lib/src/word.dart';

void main() {
try {
    Words words = Words.name("hello");
    words.reverseVowels();
  } catch (e) {
    print(e);
  }
}
