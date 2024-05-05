import 'package:test/test.dart';
import 'package:dart_course_test/q5/index.dart';


void main() {
  group('Word Reversal Function Tests', () {
    test('Test case [Hello World]', () {
      expect(reverseWords("Hello World"), equals("olleH dlroW"));
    });

    test('Test case [Welcome to TypeScript]', () {
      expect(reverseWords("Welcome to TypeScript"), equals("emocleW ot tpircSepyT"));
    });

    test('Test case [TypeScript is Awesome]', () {
      expect(reverseWords("TypeScript is Awesome"), equals("tpircSepyT si emosewA"));
    });

    test('Test case [Hello]', () {
      expect(reverseWords("Hello"), equals("olleH"));
    });

    test('Test case ['']', () {
      expect(reverseWords(""), equals(""));
    });

    test('Test case [Hello! How are you?]', () {
      expect(reverseWords("Hello! How are you?"), equals("!olleH woH era ?uoy"));
    });
  });
}

