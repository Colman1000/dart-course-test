import 'package:test/test.dart';
import 'package:dart_course_test/q2/index.dart';

void main() {
  group('Maximum Number Function Tests', () {
    test('List with positive integers', () {
      expect(findMax([1, 3, 2]), equals(3));
      expect(findMax([10, 5, 15]), equals(15));
    });

    test('List with negative integers', () {
      expect(findMax([-1, -5, -2]), equals(-1));
      expect(findMax([-10, -5, -15]), equals(-5));
    });

    test('List with zeroes', () {
      expect(findMax([0, 0, 0]), equals(0));
    });

    test('List with mixed integers', () {
      expect(findMax([1, -5, 8, 0, -3]), equals(8));
      expect(findMax([-10, 0, 5, -2, -1]), equals(5));
    });

    test('List with single element', () {
      expect(findMax([7]), equals(7));
      expect(findMax([-3]), equals(-3));
    });

    test('List with multiple occurrences of maximum', () {
      expect(findMax([5, 2, 5, 9, 5]), equals(9));
      expect(findMax([-3, -3, -1, -5, -3]), equals(-1));
    });

    test('List with large numbers', () {
      expect(findMax([1000000, 999999, 1000001]), equals(1000001));
      expect(findMax([-1000000, -999999, -1000001]), equals(-999999));
    });
  });
}
