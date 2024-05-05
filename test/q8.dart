import 'package:test/test.dart';
import 'package:dart_course_test/q8/index.dart';


void main() {
  group('Mr. Unique Function Tests', () {
    test('List [1, 2, 3, 4, 5]', () {
      expect(allUnique([1, 2, 3, 4, 5]), equals(true));
    });

    test('List [10, 20, 30, 40, 50]', () {
      expect(allUnique([10, 20, 30, 40, 50]), equals(true));
    });

    test('List [1, 2, 3, 3, 4, 5]', () {
      expect(allUnique([1, 2, 3, 3, 4, 5]), equals(false));
    });

    test('List 10, 20, 30, 30, 40, 50]', () {
      expect(allUnique([10, 20, 30, 30, 40, 50]), equals(false));
    });

    test('List [-1, -2, -3, -4, -5]', () {
      expect(allUnique([-1, -2, -3, -4, -5]), equals(true));
    });


    test('List [-1, -2, -3, -3, -4, -5]', () {
      expect(allUnique([-1, -2, -3, -3, -4, -5]), equals(false));
    });

    test('Empty list', () {
      expect(allUnique([]), equals(true));
    });

    test('List [5]', () {
      expect(allUnique([5]), equals(true));
    });

    test('List [1, 2, -3, 4, -5]', () {
      expect(allUnique([1, 2, -3, 4, -5]), equals(true));
    });

    test('List [1, 2, -3, 3, -3]]', () {
      expect(allUnique([1, 2, -3, 3, -3]), equals(false));
    });
  });
}