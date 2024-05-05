import 'package:dart_course_test/q1/index.dart';
import 'package:test/test.dart';

void main() {
  group('Summation Function Tests', () {
    test('Sum of positive integers', () {
      expect(sum(2, 3), equals(5));
      expect(sum(10, 5), equals(15));
    });

    test('Sum of negative and positive integers', () {
      expect(sum(-1, 5), equals(4));
      expect(sum(-10, 5), equals(-5));
    });

    test('Sum of zeroes', () {
      expect(sum(0, 0), equals(0));
      expect(sum(0, 5), equals(5));
    });

    test('Sum of negative integers', () {
      expect(sum(-2, -1), equals(-3));
      expect(sum(-10, -5), equals(-15));
    });

    // Add more tests if needed
  });
}
