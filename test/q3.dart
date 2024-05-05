import 'package:test/test.dart';
import 'package:dart_course_test/q3/index.dart';

void main() {
  group('Palindrome Function Tests', () {
    test('Palindrome string', () {
      expect(isPalindrome("racecar"), equals(true));
      expect(isPalindrome("level"), equals(true));
    });

    test('Non-palindrome string', () {
      expect(isPalindrome("hello"), equals(false));
      expect(isPalindrome("world"), equals(false));
    });

    test('Palindrome string with mixed case', () {
      expect(isPalindrome("Madam"), equals(false));
      expect(isPalindrome("LeVel"), equals(false));
    });

    test('Palindrome string with spaces and punctuation', () {
      expect(isPalindrome("A man, a plan, a canal, Panama"), equals(true));
      expect(isPalindrome("Was it a car or a cat I saw?"), equals(true));
    });

    test('Empty string', () {
      expect(isPalindrome(""), equals(true));
    });

    test('Single character string', () {
      expect(isPalindrome("a"), equals(true));
      expect(isPalindrome("b"), equals(true));
    });
  });
}
