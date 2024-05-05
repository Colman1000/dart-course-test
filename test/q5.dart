import 'package:test/test.dart';
import 'package:dart_course_test/q5/index.dart';


void main() {
  group('Word Reversal Function Tests', () {
    test('Basic test case', () {
      expect(reverseWords("Hello World"), equals("olleH dlroW"));
    });

    test('Test case with leading and trailing spaces', () {
      expect(reverseWords("  Welcome   to TypeScript   "), equals("emocleW ot tpircSepyT"));
    });

    test('Test case with multiple spaces between words', () {
      expect(reverseWords("  TypeScript is Awesome   "), equals("tpircSepyT si emosewA"));
    });

    test('Test case with single word', () {
      expect(reverseWords("Hello"), equals("olleH"));
    });

    test('Test case with empty string', () {
      expect(reverseWords(""), equals(""));
    });

    test('Test case with special characters', () {
      expect(reverseWords("Hello! How are you?"), equals("!olleH woH era ?uoy"));
    });
  });
}

