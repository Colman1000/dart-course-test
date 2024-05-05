import 'package:test/test.dart';
import 'package:dart_course_test/q3/index.dart';

void main() {
  group('Palindrome Function Tests', () {
    test('Palindrome string [racecar]', () {
      expect(isPalindrome("racecar"), equals(true));
    });
    test('Palindrome string [level]', () {
      expect(isPalindrome("level"), equals(true));
    });

    test('Non-palindrome string [hello]', () {
      expect(isPalindrome("hello"), equals(false));
    });

    test('Non-palindrome string [world]', () {
      expect(isPalindrome("world"), equals(false));
    });

    test('Palindrome string with mixed case [Madam]', () {
      expect(isPalindrome("Madam"), equals(false));
    });

    test('Palindrome string with mixed case [LeVel]', () {
      expect(isPalindrome("LeVel"), equals(false));
    });

    test('Empty string', () {
      expect(isPalindrome(""), equals(true));
    });

    test('Single character string [a]', () {
      expect(isPalindrome("a"), equals(true));
    });
  });
}
