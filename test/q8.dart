import 'package:test/test.dart';
import 'package:dart_course_test/q8/index.dart';


void main() {
  group('Mr. Unique Function Tests', () {
    test('List with all unique numbers', () {
      expect(allUnique([1, 2, 3, 4, 5]), equals(true));
      expect(allUnique([10, 20, 30, 40, 50]), equals(true));
    });

    test('List with duplicate numbers', () {
      expect(allUnique([1, 2, 3, 3, 4, 5]), equals(false));
      expect(allUnique([10, 20, 30, 30, 40, 50]), equals(false));
    });

    test('List with negative numbers', () {
      expect(allUnique([-1, -2, -3, -4, -5]), equals(true));
      expect(allUnique([-1, -2, -3, -3, -4, -5]), equals(false));
    });

    test('Empty list', () {
      expect(allUnique([]), equals(true));
    });

    test('List with single element', () {
      expect(allUnique([5]), equals(true));
    });

    test('List with mixed numbers', () {
      expect(allUnique([1, 2, -3, 4, -5]), equals(true));
      expect(allUnique([1, 2, -3, 3, -5]), equals(false));
    });
  });
}